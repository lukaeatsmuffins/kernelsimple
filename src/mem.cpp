#include "../h/mem.hpp"

// Singleton instance storage pointer
MemoryAllocator* MemoryAllocator::instance_ = nullptr;

static inline uint64 align_up(uint64 value, uint64 alignment) {
    return (value + alignment - 1) & ~(alignment - 1);
}

static inline uint64 align_down(uint64 value, uint64 alignment) {
    return value & ~(alignment - 1);
}

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
        // Place the allocator object at the start of the heap
        instance_ = reinterpret_cast<MemoryAllocator*>(
            const_cast<void*>(HEAP_START_ADDR));
        // Value-initialize the object in-place
        new (instance_) MemoryAllocator();

        // Compute the first free block start address aligned to MEM_BLOCK_SIZE
        uint64 start_addr = reinterpret_cast<uint64>(HEAP_START_ADDR);
        uint64 end_addr   = reinterpret_cast<uint64>(HEAP_END_ADDR);

        uint64 first_free_addr = align_up(start_addr + sizeof(MemoryAllocator),
                                          MEM_BLOCK_SIZE);
        uint64 total_free = (end_addr > first_free_addr) ?
                            (end_addr - first_free_addr) : 0;
        total_free = align_down(total_free, MEM_BLOCK_SIZE);

        instance_->free_space_ = total_free;

        // Initialize the single free block spanning the entire remaining heap
        instance_->free_block_ptr_ =
            reinterpret_cast<BlockInfo*>(first_free_addr);
        BlockInfo* head = instance_->free_block_ptr_;
        head->prev_ = nullptr;
        head->next_ = nullptr;
        head->prev_free_ = nullptr;
        head->next_free_ = nullptr;
        head->size_ = total_free;
    }
    return instance_;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if (size == 0) return nullptr;
    if (free_block_ptr_ == nullptr) return nullptr;

    // Compute total size including header and alignment
    size_t needed = align_up(size + BLOCK_INFO_HEADER_SIZE, MEM_BLOCK_SIZE);

    BlockInfo* prev_free = nullptr;
    BlockInfo* cur = free_block_ptr_;

    while (cur) {
        if (cur->size_ == needed ||
            (cur->size_ > needed &&
             (cur->size_ - needed) < (BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE))) {
            // Use the whole block if exact match or leftover would be too small
            if (prev_free) {
                prev_free->next_free_ = cur->next_free_;
            } else {
                free_block_ptr_ = cur->next_free_;
            }
            if (cur->next_free_) cur->next_free_->prev_free_ = prev_free;

            // Detach from free list
            cur->prev_free_ = nullptr;
            cur->next_free_ = nullptr;

            free_space_ -= cur->size_;
            return reinterpret_cast<void*>(
                reinterpret_cast<uint64>(cur) + BLOCK_INFO_HEADER_SIZE);
        }

        if (cur->size_ > needed) {
            // Split: allocated part stays at cur; remainder becomes a new free block
            BlockInfo* remainder = reinterpret_cast<BlockInfo*>(
                reinterpret_cast<uint64>(cur) + needed);
            remainder->size_ = cur->size_ - needed;
            remainder->prev_ = cur;
            remainder->next_ = cur->next_;
            if (remainder->next_) remainder->next_->prev_ = remainder;

            // Replace cur in free list with remainder
            remainder->prev_free_ = prev_free;
            remainder->next_free_ = cur->next_free_;
            if (prev_free) prev_free->next_free_ = remainder;
            else free_block_ptr_ = remainder;
            if (remainder->next_free_) remainder->next_free_->prev_free_ = remainder;

            // Finalize allocated block
            cur->size_ = needed;
            cur->next_ = remainder;
            cur->prev_free_ = nullptr;
            cur->next_free_ = nullptr;

            free_space_ -= needed;
            return reinterpret_cast<void*>(
                reinterpret_cast<uint64>(cur) + BLOCK_INFO_HEADER_SIZE);
        }

        prev_free = cur;
        cur = cur->next_free_;
    }

    // No suitable block
    return nullptr;
}

int MemoryAllocator::mem_free(void* free_block_addr) {
    if (!free_block_addr) return -1;

    BlockInfo* block_info = reinterpret_cast<BlockInfo*>(
        reinterpret_cast<uint64>(free_block_addr) - BLOCK_INFO_HEADER_SIZE);

    // Basic validations
    uint64 addr = reinterpret_cast<uint64>(block_info);
    uint64 start = reinterpret_cast<uint64>(HEAP_START_ADDR);
    uint64 end   = reinterpret_cast<uint64>(HEAP_END_ADDR);
    if (addr < start || addr >= end) return -1;
    if ((addr % MEM_BLOCK_SIZE) != 0) return -1;

    free_space_ += block_info->size_;

    // Insert into free list in address order
    BlockInfo* prev_free = nullptr;
    BlockInfo* cur = free_block_ptr_;
    while (cur && (reinterpret_cast<uint64>(cur) < addr)) {
        prev_free = cur;
        cur = cur->next_free_;
    }

    block_info->prev_free_ = prev_free;
    block_info->next_free_ = cur;
    if (prev_free) prev_free->next_free_ = block_info;
    else free_block_ptr_ = block_info;
    if (cur) cur->prev_free_ = block_info;

    // Coalesce with next physical neighbor if it's the next free block
    maybe_consolidate(block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    size_t max_size = 0;
    for (BlockInfo* cur = free_block_ptr_; cur; cur = cur->next_free_) {
        if (cur->size_ > max_size) max_size = cur->size_;
    }
    if (max_size < BLOCK_INFO_HEADER_SIZE) return 0;
    return max_size - BLOCK_INFO_HEADER_SIZE;
}

void MemoryAllocator::maybe_consolidate(BlockInfo* block_info) {
    // Try to merge with next neighbor
    BlockInfo* next = block_info->next_;
    if (next && block_info->next_free_ == next) {
        // Remove next from free list
        BlockInfo* next_next_free = next->next_free_;
        block_info->size_ += next->size_;
        block_info->next_ = next->next_;
        if (block_info->next_) block_info->next_->prev_ = block_info;
        block_info->next_free_ = next_next_free;
        if (next_next_free) next_next_free->prev_free_ = block_info;
    }

    // Try to merge with previous neighbor
    BlockInfo* prev = block_info->prev_;
    if (prev && block_info->prev_free_ == prev) {
        // Remove block_info from free list, extend prev
        BlockInfo* next_free = block_info->next_free_;
        prev->size_ += block_info->size_;
        prev->next_ = block_info->next_;
        if (prev->next_) prev->next_->prev_ = prev;
        prev->next_free_ = next_free;
        if (next_free) next_free->prev_free_ = prev;

        // After merging into prev, optionally merge prev with its next
        // if they became adjacent and free
        BlockInfo* prev_next = prev->next_;
        if (prev_next && prev->next_free_ == prev_next) {
            BlockInfo* nnext_free = prev_next->next_free_;
            prev->size_ += prev_next->size_;
            prev->next_ = prev_next->next_;
            if (prev->next_) prev->next_->prev_ = prev;
            prev->next_free_ = nnext_free;
            if (nnext_free) nnext_free->prev_free_ = prev;
        }
    }
}