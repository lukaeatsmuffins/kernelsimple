#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    debug_print("TCB: Creating TCB\n");
    return new TCB(body, arg, TIME_SLICE);
}

// Let's scheduler decide the next process.
void TCB::yield()
{
    dispatch();
}

// Releases the old process and starts a new one.
void TCB::dispatch()
{

    TCB *old = running;
    if (!old->isBlocked() && !old->isFinished() && !old->isSleeping()) { 
        Scheduler::put(old); 
    }

    running = Scheduler::get();
    // debug_print("Running thread: ");
    // debug_print((uint64)running);
    // debug_print("\n");
    // debug_print("Old thread: ");
    // debug_print((uint64)old);
    // debug_print("\n");

    TCB::contextSwitch(&old->context, &running->context);
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    debug_print("TCB: Starting thread body: ");
    debug_print((uint64)running->body);
    debug_print(" for thread: ");
    debug_print((uint64)running);
    debug_print(" and arg: ");
    debug_print((uint64)running->arg_);
    debug_print("\n");
    
    running->body(running->arg_);
    thread_exit();
}

void TCB::exit() {
    // Switch context to the next thread.
    debug_print("TCB: Exiting thread\n");
    TCB *old = running;
    old->setFinished(true);
    running = Scheduler::get();
    assert(running != nullptr, "Scheduler should return at least one thread");
    TCB::contextSwitch(&old->context, &running->context);
}