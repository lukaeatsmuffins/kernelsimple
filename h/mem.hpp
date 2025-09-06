#ifndef MEM_HPP
#define MEM_HPP

#include "../lib/hw.h"

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
    size_t mem_get_free_space() {
        return free_space_;
    }

    // Returns the size of the largest free memory fragment on the heap, in
    // bytes.
    size_t mem_get_largest_free_block();

    private:
    struct BlockInfo {
        // Previous physical neighbor block.
        struct BlockInfo* prev_;
        // Next physical neighbor block.
        struct BlockInfo* next_;
        // Previous block in the free list (by address order).
        struct BlockInfo* prev_free_;
        // Next block in the free list (by address order).
        struct BlockInfo* next_free_;
        // Total size of this block including header, in bytes.
        size_t size_;
    };

    // Pointer to singleton instance (lives at HEAP_START_ADDR).
    static MemoryAllocator* instance_;

    // Pointer to the head of the free list.
    BlockInfo* free_block_ptr_ = nullptr;

    // Total free space in bytes (sum of sizes of all free blocks).
    size_t free_space_ = 0;

    // Block header size.
    static constexpr size_t BLOCK_INFO_HEADER_SIZE = sizeof(BlockInfo);

    // Private constructor and assignment operator to prevent copying
    MemoryAllocator() = default;
    MemoryAllocator(const MemoryAllocator &) = delete;
    MemoryAllocator &operator=(const MemoryAllocator &) = delete;

    // Consolidates adjacent free blocks around block_info. Assumes block_info
    // is linked into the free list.
    void maybe_consolidate(struct BlockInfo* block_info);
};

#endif // MEM_HPP