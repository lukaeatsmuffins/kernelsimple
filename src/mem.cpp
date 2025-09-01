#include "../h/mem.hpp"

static MemoryAllocator *MemoryAllocator::get_instance() {
    if (!instance) {
        // Initialize the instance of the MemoryAllocator.
        instance_ = (MemoryAllocator*)HEAP_START_ADDR;

        // Initialize the rest of the allocator fields.
        // First free block is after the allocator, aligned to MEM_BLOCK_SIZE.
        instance_->free_block_ptr_ = 
            HEAP_START_ADDR + 
            ((sizeof(MemoryAllocator) + MEM_BLOCK_SIZE - 1) 
            & ~(MEM_BLOCK_SIZE - 1));

        // Remaining is left as free space.
        instance_->free_space_ = 
            (void*)HEAP_END_ADDR - instance_->free_block_ptr_;

        // The first free block should contain all of the remaining memory.
        instance_->free_block_ptr_->next_ = nullptr;
        instance_->free_block_ptr_->size_ = instance_->free_space_;

        debug_print("MemoryAllocator initialized with:\n");
        debug_print("MEM_BLOCK_SIZE: ");
        debug_print(MEM_BLOCK_SIZE);
        debug_print("\nHEAP_START_ADDR: ");
        debug_print(HEAP_START_ADDR);
        debug_print("\nHEAP_END_ADDR: ");
        debug_print(HEAP_END_ADDR);
        debug_print("\nFirst free block pointer: ");
        debug_print(instance_->free_block_ptr_);
        debug_print("\nTotal free space: ");
        debug_print(instance_->free_space_);
    }
    return instance_;
}

void* MemoryAllocator::mem_alloc (size_t size) {

    // There is no free block, we cannot allocate more memory.
    if (free_block_ptr_ == nullptr) {
        return nullptr;
    }

    // Align size to MEM_BLOCK_SIZE.
    size = (size + BLOCK_INFO_HEADER_SIZE + MEM_BLOCK_SIZE - 1) 
           & ~(MEM_BLOCK_SIZE - 1);

    void* free_block_iter = free_block_ptr_;


    while (free_block_iter != nullptr) {
        // If we found the same size block, we just need to unlink from the free
        // list.
        if (free_block_iter->size_ == size) {
            free_space_ -= size;
            free_block_iter->next_free_->prev_free_ = 
                free_block_iter->prev_free_;
            free_block_iter->prev_free_->next_free_ = 
                free_block_iter->next_free_;

            return (void*)((uint64)free_block_iter + BLOCK_INFO_HEADER_SIZE);
        }

        if (free_block_iter->size_ > size) {
            // We found a larger block, we need to fragment it.
            BlockInfo* new_free_block = 
                (BlockInfo*)((uint64)free_block_iter + size);
            // Link the new free block to the free list. We need to update all
            // of its fields.
            new_free_block->size_ = free_block_iter->size_ - size;
            new_free_block->next_free_ = free_block_iter->next_free_;
            new_free_block->prev_free_ = free_block_iter->prev_free_;

            // New free block is between the free block and its next block.
            new_free_block->next_ = free_block_iter->next_;
            new_free_block->prev_ = free_block_iter;

            // New free block should be unlinked from the free list. Nullptr
            // indicates that these are allocated blocks.
            free_block_iter->next_free_ = nullptr;
            free_block_iter->prev_free_ = nullptr;

            // The allocated block is between the same previous block and the 
            // new free block.
            free_block_iter->next_ = new_free_block;
            free_block_iter->size_ = size;

            return (void*)((uint64)free_block_iter + BLOCK_INFO_HEADER_SIZE);
        }

        // We didn't find the block, move to the next one.
        free_block_iter = free_block_iter->next_;
    }

    // We didn't find any block, return nullptr.
    return nullptr;
}

int MemoryAllocator::mem_free (void* free_block_addr) {

    // Check if the pointer is valid.
    if (!free_block_addr) {
        debug_print("Free block address is null.");
        return -1;
    }
    // Pointer should be aligned to MEM_BLOCK_SIZE.
    if ((uintptr_t)free_block_addr % MEM_BLOCK_SIZE != 0) {
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.");
        return -1;
    }

    if (free_block_addr < HEAP_START_ADDR || free_block_addr >= HEAP_END_ADDR) {
        debug_print("Free block address is not in the heap.");
        return -1;
    }

    // Find the block before the one we want to free.
    FreeBlock* free_block_iter = free_block_ptr_;
    while ((void*)free_block_iter < free_block_addr) {
        assert(free_block_iter->next_, "free_block_iter->next_ is null");
        free_block_iter = free_block_iter->next_;
    }
    assert(free_block_iter < HEAP_END_ADDR, 
          "free_block_iter is greater than HEAP_END_ADDR");
    assert(free_block_iter >= HEAP_START_ADDR,
           "free_block_iter is less than HEAP_START_ADDR");
    
    // There is no iterator, we are at the last block. Just append to the list.
    if (!free_block_iter) {
    {
        // this doesn't work yet
        free_block_iter->prev_->next_ = free_block_addr;
    }

    // If there is no previous block, we are freeing the first block. This means
    // that free_block_iter == free_block_ptr_. We need to update the 
    // free_block_ptr_ and its next becomes the free_block_iter.
    if (!free_block_iter->prev_) {
        assert(free_block_iter == free_block_ptr_,
               "free_block_iter is not the first block but has no prev block");
        free_block_ptr_ = free_block_addr;
        free_block_ptr_->prev_ = nullptr;
        free_block_ptr_->next_ = free_block_iter;
        // free_block_ptr_->size_ = free_block_iter->size_; // this doesn't work
        // free_space_ += free_block_iter->size_; // size has to be properly done
        return 0;
        } 
    free_block_iter->prev_ = free_block_addr;

    // maybecoalesce()
    }
}

size_t MemoryAllocator::mem_get_largest_free_block() {

}