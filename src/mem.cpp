#include "../h/mem.hpp"

MemoryAllocator *MemoryAllocator::getInstance() {
    static MemoryAllocator* instance_ = nullptr;
    if (!instance_) {
        // Initialize the instance of the MemoryAllocator.
        instance_ = (MemoryAllocator*)HEAP_START_ADDR;

        // Initialize the rest of the allocator fields.
        // First free block is after the allocator, aligned to MEM_BLOCK_SIZE.
        uint64 allocator_start = (uint64)HEAP_START_ADDR;
        uint64 allocator_size_rounded = (sizeof(MemoryAllocator) + (MEM_BLOCK_SIZE - 1)) & ~(MEM_BLOCK_SIZE - 1);
        instance_->free_block_ptr_ = (MemoryAllocator::BlockInfo*)(allocator_start + allocator_size_rounded);

        // Remaining is left as free space.
        instance_->free_space_ = (size_t)((uint64)HEAP_END_ADDR - (uint64)instance_->free_block_ptr_);

        // The first free block should contain all of the remaining memory.
        instance_->free_block_ptr_->prev_ = nullptr;
        instance_->free_block_ptr_->next_ = nullptr;
        instance_->free_block_ptr_->prev_free_ = nullptr;
        instance_->free_block_ptr_->next_free_ = nullptr;
        instance_->free_block_ptr_->size_ = instance_->free_space_;

        debug_print("MemoryAllocator initialized with:\n");
        debug_print("MEM_BLOCK_SIZE: ");
        debug_print(MEM_BLOCK_SIZE);
        debug_print("\nHEAP_START_ADDR: ");
        debug_print((uint64)HEAP_START_ADDR);
        debug_print("\nHEAP_END_ADDR: ");
        debug_print((uint64)HEAP_END_ADDR);
        debug_print("\nFirst free block pointer: ");
        debug_print((uint64)instance_->free_block_ptr_);
        debug_print("\nTotal free space: ");
        debug_print((uint64)instance_->free_space_);
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

    BlockInfo* free_block_iter = free_block_ptr_;


    while (free_block_iter != nullptr) {
        // If we found the same size block, we just need to unlink from the free
        // list. We keep the prev_free_ and next_free_ pointers. They will be
        // used when freeing the block.
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


            // The allocated block is between the same previous block and the 
            // new free block.
            free_block_iter->next_ = new_free_block;
            free_block_iter->size_ = size;

            // Now update the metadata of the surrounding blocks. The block
            // preceeding the new allocated block should already point to it,
            // so we only need to update the next block. It should point back
            // to the new free block. It may not exist if it is the last block.
            if (new_free_block->next_) {
                new_free_block->next_->prev_ = new_free_block;
            }
            
            // We need to do the same for the free list blocks.
            if (new_free_block->next_free_) {
                free_block_iter->next_free_->prev_free_ = new_free_block;
            }
            if (new_free_block->prev_free_) {
                free_block_iter->prev_free_->next_free_ = new_free_block;
            }
            // And do the same for the surrounding blocks.
            if (free_block_iter->prev_) {
                free_block_iter->prev_->next_free_ = new_free_block;
            }
            if (new_free_block->next_) {
                new_free_block->next_->prev_free_ = new_free_block;
            }

            // We also need to update the free list pointers for the newly
            // allocated block.
            free_block_iter->next_free_ = new_free_block;
            free_block_iter->prev_free_ = nullptr;

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

    // The pointer being freed points to user data, not the inline metadata.
    BlockInfo* block_info = (BlockInfo*)free_block_addr - 1;

    // Pointer should be aligned to MEM_BLOCK_SIZE.
    if ((uint64)block_info % MEM_BLOCK_SIZE != 0) {
        debug_print("Free block address is not aligned to MEM_BLOCK_SIZE.");
        return -1;
    }

    if ((uint64)block_info < (uint64)HEAP_START_ADDR || (uint64)block_info >= (uint64)HEAP_END_ADDR) {
        debug_print("Free block address is not in the heap.");
        return -1;
    }

    free_space_ += block_info->size_;

    // Since we are freeing the block, we need to link it into the free list.
    // The block should already be pointing to the previous ane next free blocks
    // meaning that we only need to update their free list pointers.
    if (block_info->prev_free_) {
        block_info->prev_free_->next_free_ = block_info;
    } else {
        free_block_ptr_ = block_info;
    }

    if (block_info->next_free_) {
        block_info->next_free_->prev_free_ = block_info;
    }

    // We also need to update the prev_ and next_ blocks' free list pointers.
    // They should already be pointing back to us.
    assert(block_info->prev_->next_ == block_info, 
          "prev_ is not pointing to the block");
    assert(block_info->next_->prev_ == block_info, 
          "next_ is not pointing to the block");

    if (block_info->prev_) {
        block_info->prev_->next_free_ = block_info;
    }
    if (block_info->next_) {
        block_info->next_->prev_free_ = block_info;
    }

    // We may have adjacent free blocks, so we need to consolidate them.
    maybe_consolidate(block_info);
    return 0;
}

// TODO: this method is not correct.
size_t MemoryAllocator::mem_get_largest_free_block() {
    return free_block_ptr_->size_;
}

void MemoryAllocator::maybe_consolidate(BlockInfo* block_info) {
    assert(block_info->next_free_->prev_free_ == block_info, 
          "next_free_ is not pointing to the block");
    assert(block_info->prev_free_->next_free_ == block_info, 
          "prev_free_ is not pointing to the block");
          
    // Maybe consolidate with the next block. 
    if (block_info->next_free_ && 
        (block_info->next_free_ == block_info->next_)) {
        // Update the size of the previous free block.
        block_info->size_ += block_info->next_free_->size_;
        // If there is a free block after, make sure it points back.
        if (block_info->next_free_->next_free_) {
            assert(block_info->next_free_->next_free_->prev_ 
                != block_info->next_free_->next_free_->prev_free_, 
                "blocks should already be consolidated");
            block_info->next_free_->next_free_->prev_free_ = 
                block_info->next_free_; 
            }
        // Update the pointers of the previous free block to point to the
        // correct next block.
        block_info->next_ = block_info->next_free_->next_;
        block_info->next_free_ = block_info->next_free_->next_free_;

    }

    // Maybe consolidate with the previous block.
    if (block_info->prev_free_ && 
       (block_info->prev_free_ == block_info->prev_)){
        // Update the size of the previous free block.
        block_info->prev_free_->size_ += block_info->size_;
        // If there is a free block after, make sure it points back.
        if (block_info->next_free_) {
            assert(block_info->next_free_->prev_
                != block_info->next_free_->prev_free_, 
                "blocks should already be consolidated");
            block_info->next_free_->prev_free_ = block_info->prev_free_;
        }
        // Update the pointers of the previous free block to point to the
        // correct next block.
        block_info->prev_free_->next_ = block_info->next_;
        block_info->prev_free_->next_free_ = block_info->next_free_;
    }
}