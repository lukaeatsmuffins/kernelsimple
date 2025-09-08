//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/mem.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        // Should be triggered on syscall.
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        // debug_print("Supervisor trap handler called\n");

        uint64 a0, a1, a2, a3, a4, a5, a6, a7;
        __asm__ volatile ("mv %0, a0" : "=r"(a0));
        __asm__ volatile ("mv %0, a1" : "=r"(a1));
        __asm__ volatile ("mv %0, a2" : "=r"(a2));
        __asm__ volatile ("mv %0, a3" : "=r"(a3));
        __asm__ volatile ("mv %0, a4" : "=r"(a4));
        __asm__ volatile ("mv %0, a5" : "=r"(a5));
        __asm__ volatile ("mv %0, a6" : "=r"(a6));
        __asm__ volatile ("mv %0, a7" : "=r"(a7));

        uint64 res = 0;
        switch (a0) {
            case SyscallCode::MEM_ALLOC:
                res = (uint64)MemoryAllocator::getInstance()->mem_alloc(a1);
                break;
            case SyscallCode::MEM_FREE:
                res = MemoryAllocator::getInstance()->mem_free((void*)a1);
                break;
            case SyscallCode::MEM_GET_FREE_SPACE:
                MemoryAllocator::getInstance()->mem_get_free_space();
                break;
            case SyscallCode::MEM_GET_LARGEST_FREE_BLOCK:
                MemoryAllocator::getInstance()->mem_get_largest_free_block();
                break;
            case SyscallCode::THREAD_CREATE: {
                thread_t* handle = (thread_t*)a1;
                *handle = (thread_t)TCB::createThread((void(*)(void*))a2, (void*)a3);
                // debug_print("Thread created with handle: ");
                // debug_print((uint64)*handle);
                // debug_print("\n");
                // debug_print("Thread body: ");
                // debug_print((uint64)a2);
                // debug_print("\n");
                // debug_print("Thread arg: ");
                // debug_print((uint64)a3);
                // debug_print("\n");
                if (!(*handle))
                    res = -1;
                }
                break;
            case SyscallCode::THREAD_EXIT: {
                TCB::exit();
                thread_t* handle = (thread_t*)a1;
                assert(*handle == TCB::running, "Thread exit should be called by the running thread");
                delete *handle;
                }
                break;
            case SyscallCode::THREAD_DISPATCH:
                TCB::dispatch();
                break;
            case SyscallCode::SEM_OPEN: {
                sem_t* handle = (sem_t*)a1;
                *handle = (sem_t)_semaphore::open(a2);
                if (!(*handle))
                    res = -1;
                }
                break;
            case SyscallCode::SEM_CLOSE: {
                // TODO: Double check.
                sem_t* handle = (sem_t*)a1;
                (*handle)->close();
                delete *handle;
                }
                break;
            case SyscallCode::SEM_WAIT: {
                sem_t* handle = (sem_t*)a1;
                res = (*handle)->wait();
            }
                break;
            case SyscallCode::SEM_SIGNAL: {
                sem_t* handle = (sem_t*)a1;
                (*handle)->signal();
            }
                break;
            case SyscallCode::GETC:
                res = __getc();
                break;
            case SyscallCode::PUTC:
                __putc((char)a1);
                break;
        }
        __asm__ volatile ("mv a0, %0" : : "r"(res));

        // Overwrite a0 with the result from the syscall.
        __asm__ volatile ("sd %0, 10*8(x8)" : : "r"(res));

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    {
        // debug_print("Console handler called\n");
        console_handler();
    }
    else
    {
        // unexpected trap cause
    }
}