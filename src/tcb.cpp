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
    dispatch();
}

// Releases the old process and starts a new one.
void TCB::dispatch()
{

    TCB *old = running;
    if (!old->isBlocked() && !old->isFinished()) { Scheduler::put(old); }

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg_);
    thread_exit();
}

void TCB::exit() {
    // Switch context to the next thread.
    TCB *old = running;
    old->setFinished(true);
    running = Scheduler::get();
    assert(running != nullptr, "Scheduler should return at least one thread");
    TCB::contextSwitch(&old->context, &running->context);
}