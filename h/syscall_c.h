#ifndef OS1_SYSCALL_C_H
#define OS1_SYSCALL_C_H

#include "../lib/hw.h"
#include "semaphore.hpp"
#include "tcb.hpp"

const int EOF = -1; 

typedef TCB* thread_t;
typedef _semaphore* sem_t;
typedef unsigned long time_t;


enum SyscallCode {
    MEM_ALLOC = 0x1,
    MEM_FREE = 0x2,
    MEM_GET_FREE_SPACE = 0x3,
    MEM_GET_LARGEST_FREE_BLOCK = 0x4,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    TIME_SLEEP = 0x31,
    GETC = 0x41,
    PUTC = 0x42,
};

void* mem_alloc (size_t size);

int mem_free (void* ptr);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit ();

void thread_dispatch ();

int sem_open (sem_t* handle, unsigned init);

int sem_close (sem_t handle); 

int sem_wait (sem_t id); 

int sem_signal (sem_t id); 

int time_sleep (time_t);

char getc ();

void putc (char);

#endif // OS1_SYSCALL_C_H