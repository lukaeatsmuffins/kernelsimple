#ifndef MEM_HPP
#define MEM_HPP

#include "../lib/hw.h"

extern const void* HEAP_START_ADDR, HEAP_END_ADDR;
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
    size_t mem_get_free_space() {
        return free_space_;
    }

    // Returns the size of the largest free memory fragment on the heap, in
    // bytes.
    size_t mem_get_largest_free_block();

    private:
    // Inline information stored on the free block
    struct BlockInfo {
        // Pointer to the previous block.
        BlockInfo* prev_;
        // Pointer to the next block.
        BlockInfo* next_;
        // Pointer to the next free block.
        BlockInfo* next_free_;
        // Pointer to the next used block.
        BlockInfo* prev_free_;
        // Size of the block.
        uint64 size_;
    };

    // Pointer to the first free block.
    BlockInfo* free_block_ptr_ = nullptr;

    size_t free_space_ = 0;

    // No global singleton instance pointer; implemented with function-local static in getInstance()

    // Block info header size.
    static constexpr uint64 BLOCK_INFO_HEADER_SIZE = 5 * sizeof(uint64);

    // Private constructor and assignment operator to prevent copying
    MemoryAllocator() = default;
    MemoryAllocator(const MemoryAllocator &) = delete;
    MemoryAllocator &operator=(const MemoryAllocator &) = delete;

    // Consolidates adjacent free blocks. Assumes that the block is already
    // been freed.
    void maybe_consolidate(BlockInfo* block_info);
};

#endif // MEM_HPP