#ifndef MEM_HPP
#define MEM_HPP

#include "../lib/hw.h"
#include "print.hpp"

extern const void* HEAP_START_ADDR;
extern const void* HEAP_END_ADDR;
extern const size_t MEM_BLOCK_SIZE;

// Singleton class that manages the heap memory.
class MemoryAllocator {
    public:
    // Returns the pointer to the singleton instance of the MemoryAllocator.
    static MemoryAllocator *getInstance();

    // Allocates at least size bytes of memory, rounded and aligned to
    // MEM_BLOCK_SIZE. Returns pointer to allocated memory or nullptr if
    // allocation fails. Uses first fit algorithm.
    void* mem_alloc (size_t size);

    // Frees the memory block pointed to by ptr. Returns 0 if successful,
    // otherwise a negative error code. No safety checks are performed if random
    // pointer is passed.
    int mem_free (void*); 

    // Returns the total amount of free memory in the heap, in bytes.
    size_t mem_get_free_space();

    // Returns the size of the largest free memory fragment on the heap, in
    // bytes.
    size_t mem_get_largest_free_block();

    // Inline information stored on the free block
    struct BlockInfo {
        // Pointer to the next block.
        BlockInfo* next_;
        // Size of the block.
        uint64 size_;
    };

    private:
    static MemoryAllocator* instance_;

    // Pointer to the first free block.
    BlockInfo* free_block_ptr_ = nullptr;

    // Block info header size.
    static const uint64 BLOCK_INFO_HEADER_SIZE = 2 * sizeof(uint64);

    // Private constructor and assignment operator to prevent copying
    MemoryAllocator() = default;
    MemoryAllocator(const MemoryAllocator &) = delete;
    MemoryAllocator &operator=(const MemoryAllocator &) = delete;

    // Consolidates adjacent free blocks. Assumes that the blocks are already
    // freed. First block must come before the second block.
    void maybe_consolidate(BlockInfo* first_block, BlockInfo* second_block);
};

#endif // MEM_HPP