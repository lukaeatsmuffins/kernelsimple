#include "../h/syscall_c.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    __asm__ volatile ("ecall");
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    return result;
}

void* mem_alloc (size_t size) {
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
}

int mem_free (void* ptr) {
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
}

size_t mem_get_free_space() {
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
}

size_t mem_get_largest_free_block() {
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
}

int thread_exit () {
    return syscall(SyscallCode::THREAD_EXIT);
}

void thread_dispatch () {
    syscall(SyscallCode::THREAD_DISPATCH);
}