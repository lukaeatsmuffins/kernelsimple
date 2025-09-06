#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    return new TCB(body, arg, TIME_SLICE);
}

// Let's scheduler decide the next process.
void TCB::yield()
{
    // __asm__ volatile ("ecall");
    dispatch();
}

// Releases the old process and starts a new one.
void TCB::dispatch()
{
    // Put the process back into the queue if it isn't finished and if it isn't
    // blocked.
    TCB *old = running;
    // TODO: Should we delete the old thread?
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg_);
    running->setFinished(true);
    TCB::yield();
}

void TCB::exit() {
    // Switch context to the next thread.
    TCB *old = running;
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
    // delete old; ?? WE SHOULD DELETE THE OLD THREAD? RIGHT?!
}