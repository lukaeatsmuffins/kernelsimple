#include "../h/mem.hpp"

MemoryAllocator* MemoryAllocator::instance_ = nullptr;

MemoryAllocator* MemoryAllocator::getInstance() {
    if (!instance_) {
        // Initialize the instance of the MemoryAllocator.
        instance_ = (MemoryAllocator*)(((uint64)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1 )
        & ~(MEM_BLOCK_SIZE - 1));

        // Initialize the rest of the allocator fields.
        // First free block is after the allocator, aligned to MEM_BLOCK_SIZE.
        instance_->free_block_ptr_ =  (BlockInfo*)(
            (uint64)instance_+ 
            ((sizeof(MemoryAllocator) + MEM_BLOCK_SIZE - 1) 
            & ~(MEM_BLOCK_SIZE - 1)));

        // The first free block should contain all of the remaining memory.
        instance_->free_block_ptr_->next_ = nullptr;
        instance_->free_block_ptr_->size_ = 
            (uint64)HEAP_END_ADDR - 
            (uint64)instance_->free_block_ptr_;

        debug_print("MemoryAllocator initialized with:\n");
        debug_print("MEM_BLOCK_SIZE: ");
        debug_print(MEM_BLOCK_SIZE);
        debug_print("\nHEAP_START_ADDR: ");
        debug_print((uint64)HEAP_START_ADDR);
        debug_print("\nHEAP_END_ADDR: ");
        debug_print((uint64)HEAP_END_ADDR);
        debug_print("\nFirst free block pointer: ");
        debug_print((uint64)instance_->free_block_ptr_);
        debug_print("\nBLOCK_INFO_HEADER_SIZE: ");
        debug_print(BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
    }
    return instance_;
}

void* MemoryAllocator::mem_alloc (size_t size) {

    debug_print("Allocating memory of size: ");
    debug_print(size);
    debug_print("\n");

    // There is no free block, we cannot allocate more memory.
    if (this->free_block_ptr_ == nullptr) {
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
           & ~(MEM_BLOCK_SIZE - 1);

    debug_print("Aligned size: ");
    debug_print(size);
    debug_print("\n");

    BlockInfo* prev_free_block = nullptr, *free_block = free_block_ptr_;

    // Try to find the first free block that is large enough.
    while (free_block && free_block->size_ < size) {
        prev_free_block = free_block;
        free_block = free_block->next_;
    }

    // Didn't find a large enough block, we cannot allocate more memory.
    if (free_block == nullptr) {
        return nullptr;
    }

    // Do we need to fragment the block?
    if (free_block->size_ > size) {
        // We found a larger block, we need to fragment it.
        BlockInfo* new_free_block = 
            (BlockInfo*)((uint64)free_block + size);
        
        // Link the new free block into the free list.
        if (prev_free_block) {
            prev_free_block->next_ = new_free_block;
        } else {
            free_block_ptr_ = new_free_block;
        }

        new_free_block->next_ = free_block->next_;
        new_free_block->size_ = free_block->size_ - size;
    } else {
        // We have an exact fit.
        if (prev_free_block) {
            prev_free_block->next_ = free_block->next_;
        } else {
            free_block_ptr_ = free_block->next_;
        }
    }
    // Update the size of the allocated block.
    free_block->size_ = size;

    debug_print("Allocated block at address: ");
    debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
    debug_print("\n");

    if ((uint64)free_block % MEM_BLOCK_SIZE != 0) {
        debug_print("Allocated block address is not aligned to MEM_BLOCK_SIZE.\n");
        debug_print("Allocated block address: ");
        debug_print((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
        debug_print("\n");
        debug_print("Free block address: ");
        debug_print((uint64)free_block);
        debug_print("\n");
    }

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
}

int MemoryAllocator::mem_free (void* free_block_addr) {

    debug_print("Freeing block at address: ");
    debug_print((uint64)free_block_addr);
    debug_print("\n");

    // Check if the pointer is valid.
    if (!free_block_addr) {
        debug_print("Free block address is null.\n");
        return -1;
    }

    // The pointer being freed points to user data, not the inline metadata.
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;

    // Pointer should be aligned to MEM_BLOCK_SIZE.
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.\n");
        return -2;
    }

    if ((uint64)block_info < (uint64)HEAP_START_ADDR || 
        (uint64)block_info >= (uint64)HEAP_END_ADDR) {
        debug_print("Free block address is not in the heap.\n");
        return -3;
    }

    BlockInfo* prev_free_block = nullptr, *next_free_block = free_block_ptr_;

    // Try to find the first free block that is large enough.
    while (next_free_block &&
          !(((uint64)next_free_block > (uint64)block_info) &&
          ((uint64)prev_free_block < (uint64)block_info))) {
        prev_free_block = next_free_block;
        next_free_block = next_free_block->next_;
    }

    // If we didn't find a free block, we need to add the block to the free 
    // list.

    debug_print("Prev free block: ");
    debug_print((uint64)prev_free_block);
    debug_print("\n");

    debug_print("Block info: ");
    debug_print((uint64)block_info);
    debug_print("\n");

    debug_print("Next free block: ");
    debug_print((uint64)next_free_block);
    debug_print("\n");

    if (!prev_free_block) {
        debug_print("Block is the first free block.\n");
        free_block_ptr_ = block_info;
    } else {
        debug_print("Block is not the first free block.\n");
        prev_free_block->next_ = block_info;
    }

    block_info->next_ = next_free_block;

    // We may have adjacent free blocks, so we need to consolidate them.
    maybe_consolidate(block_info, next_free_block);
    maybe_consolidate(prev_free_block, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    BlockInfo* free_block_iter = free_block_ptr_;
    size_t largest_free_block_size = 0;
    while (free_block_iter) {
        if (free_block_iter->size_ > largest_free_block_size) {
            largest_free_block_size = free_block_iter->size_;
        }
    }
    return largest_free_block_size;
}

size_t MemoryAllocator::mem_get_free_space() {
    size_t free_space = 0;
    BlockInfo* free_block_iter = free_block_ptr_;
    while (free_block_iter) {
        free_space += free_block_iter->size_;
        free_block_iter = free_block_iter->next_;
    }
    return free_space;
}

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
        debug_print("Cannot consolidate blocks, one of them is null.\n");
        return;
    }
    assert((uint64)first_block < (uint64)second_block, "First block address is not less than second block address.\n");

    if ((uint64)first_block + first_block->size_ != (uint64)second_block) {
        debug_print("First block address: ");
        debug_print((uint64)first_block);
        debug_print("\n");
        debug_print("First block size: ");
        debug_print(first_block->size_);
        debug_print("\n");
        debug_print("Second block address: ");
        debug_print((uint64)second_block);
        debug_print("\n");

        debug_print("Cannot consolidate blocks, they are not adjacent.\n");
        return;
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
}