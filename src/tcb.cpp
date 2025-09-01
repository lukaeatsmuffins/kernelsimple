#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    return new TCB(body, TIME_SLICE);
}

// Let's scheduler decide the next process.
void TCB::yield()
{
    __asm__ volatile ("ecall");
}

// Releases the old process and starts a new one.
void TCB::dispatch()
{
    // Put the process back into the queue if it isn't finished.
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }

    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

// Actual function being executed is the thread wrapper.
// The values
void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}
