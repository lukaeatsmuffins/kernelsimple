#include "../h/mem.hpp"

static MemoryAllocator *MemoryAllocator::get_instance() {
    if (!instance_) {
        // Initialize the instance of the MemoryAllocator.
        instance_ = (MemoryAllocator*)HEAP_START_ADDR;

        // Initialize the rest of the allocator fields.
        // First free block is after the allocator, aligned to MEM_BLOCK_SIZE.
        instance_->free_block_ptr_ = 
            HEAP_START_ADDR + 
            ((sizeof(MemoryAllocator) + MEM_BLOCK_SIZE - 1) 
            & ~(MEM_BLOCK_SIZE - 1));

        // The first free block should contain all of the remaining memory.
        instance_->free_block_ptr_->next_ = nullptr;
        instance_->free_block_ptr_->size_ = 
            instance_->free_space_ + BLOCK_INFO_HEADER_SIZE;

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

    void* prev_free_block = nullptr, *free_block = free_block_ptr_;

    // Try to find the first free block that is large enough.
    while (free_block != nullptr && free_block->size_ < size) {
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

    return (void*)((uint64)free_block + BLOCK_INFO_HEADER_SIZE);
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

    if ((uint64)block_info < HEAP_START_ADDR || (uint64)block_info >= HEAP_END_ADDR) {
        debug_print("Free block address is not in the heap.");
        return -1;
    }

    free_space_ += block_info->size_;

    // Since we are freeing the block, we need to link it into the free list.
    // To do so, we need to find the previous and next free blocks.
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
    assert(block_info->prev_->next == block_info, 
          "prev_ is not pointing to the block");
    assert(block_info->next_->prev == block_info, 
          "next_ is not pointing to the block");

    if (block_info->prev_) {
        block_info->prev_->next_free_ = block_info;
    }
    if (block_info->next_) {
        block_info->next_->prev_free_ = block_info;
    }

    // We may have adjacent free blocks, so we need to consolidate them.
    maybe_consolidate(block_info, block_info->next_);
    maybe_consolidate(block_info->prev_, block_info);
    return 0;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    auto free_block_iter = free_block_ptr_;
    size_t largest_free_block_size = 0;
    while (free_block_iter != nullptr) {
        if (free_block_iter->size_ > largest_free_block_size) {
            largest_free_block_size = free_block_iter->size_;
        }
    }
    return largest_free_block_size;
}

void MemoryAllocator::
maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block) {

    // If either block is null, we cannot consolidate them.
    if (!first_block || !second_block) {
        debug_print("Cannot consolidate blocks, one of them is null.");
        return;
    }

    // If either block is allocated, we cannot consolidate them.
    if (!first_block->allocated_ || !second_block->allocated_) {
        debug_print("Cannot consolidate blocks, one of them is allocated.");
        return;
    }

    // If we reached here, both blocks should be allocated and free, and be 
    // pointing to each other.
    assert(second_block->prev_ == first_block, 
        "second block is not pointing to the first block");
    assert(first_block->next_ == second_block, 
        "first block is not pointing to the second block");

    // If there is a next block, make sure it points back to the first block. If 
    // it does, then it should already be allocated.
    if (second_block->next_) {
        assert(second_block->next_->allocated_,
            "blocks should already be consolidated");
        second_block->next_->prev_= 
            first_block;
    }

    // The block before the first block should already be pointing to it, and it
    // should already be pointing back. It should also already be allocated.
    if (first_block->prev_) {
        assert(second_block->prev_->allocated_,
            "blocks should already be consolidated");
    }

    // Update the size of the first free block.
    first_block->size_ += second_block->size_;

    // First block now points to second block's next block.
    first_block->next_ = second_block->next_;
}