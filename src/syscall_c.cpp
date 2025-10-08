#include "../h/syscall_c.h"
#include "../h/print.hpp"


uint64 syscall(SyscallCode code, uint64 a0 = 0, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0, uint64 a5 = 0, uint64 a6 = 0, uint64 a7 = 0) {
    __asm__ volatile ("ecall");
    uint64 result;
    __asm__ volatile ("mv %0, a0" : "=r"(result));
    return result;
}

// TODO: Do this with number of blocks instead of size.
void* mem_alloc (size_t size) {
    // debug_print("Syscall malloc called\n");
    return (void*)syscall(SyscallCode::MEM_ALLOC, (uint64)size);
}

int mem_free (void* ptr) {
    // debug_print("Syscall free called\n");
    return (int)syscall(SyscallCode::MEM_FREE, (uint64)ptr);
}

size_t mem_get_free_space() {
    debug_print("Syscall get free space called\n");
    return syscall(SyscallCode::MEM_GET_FREE_SPACE);
}

size_t mem_get_largest_free_block() {
    debug_print("Syscall get largest free block called\n");
    return syscall(SyscallCode::MEM_GET_LARGEST_FREE_BLOCK);
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    return syscall(SyscallCode::THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
}

int thread_exit () {
    // this never returns, changes context. is this intended?
    debug_print("Syscall thread exit called\n");
    return syscall(SyscallCode::THREAD_EXIT);
}

void thread_dispatch () {
    syscall(SyscallCode::THREAD_DISPATCH);
}

int sem_open (sem_t* handle, unsigned init) {
    debug_print("Syscall sem open called\n");
    debug_print("Syscall sem open: Handle: ");
    debug_print((uint64)handle);
    debug_print("\n");
    debug_print("Syscall sem open: Init: ");
    debug_print((uint64)init);
    debug_print("\n");
    return syscall(SyscallCode::SEM_OPEN, (uint64)handle, (uint64)init);
}

int sem_close (sem_t handle) {
    debug_print("Syscall sem close called\n");
    return syscall(SyscallCode::SEM_CLOSE, (uint64)handle);
}

int sem_wait (sem_t id) {

    return syscall(SyscallCode::SEM_WAIT, (uint64)id);
}

int sem_signal (sem_t id) {
    return syscall(SyscallCode::SEM_SIGNAL, (uint64)id);
}

int time_sleep (time_t time) {
    return syscall(SyscallCode::TIME_SLEEP, (uint64)time);
}

char getc () {
    return syscall(SyscallCode::GETC);
}

void putc (char c) {
    syscall(SyscallCode::PUTC, (uint64)c);
}

int getThreadId() {
    return syscall(SyscallCode::GET_THREAD_ID);
}

void thread_join(thread_t* handle, time_t time) {
    syscall(SyscallCode::THREAD_JOIN, (uint64)handle, (uint64)time);
}