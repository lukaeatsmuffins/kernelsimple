#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

int TCB::lastThreadId = -1;

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
    
    sem_wait()
    running->body(running->arg_);
    sem_signal()
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

void TCB::join(thread_t handle, time_t time) {
    joined_ = true;
    if (time) {
        debug_print("TCB: Joining thread in scheduler\n");
        Scheduler::join(time);
    }
    while(handle && !handle->isFinished() && joined_) {
        debug_print("TCB: YIELDING\n");
        yield();
    }
    if (!handle->isFinished()) {
        debug_print("TCB: HANDLE IS NOT FINISHED\n");
    }
    if (!joined_) {
        debug_print("TCB: JOINED IS NOT TRUE\n");
    }
    if (handle) {
        debug_print("TCB: HANDLE IS NOT NULL\n");
    }
    debug_print("TCB: LEAVING\n");
    joined_ = false;
}