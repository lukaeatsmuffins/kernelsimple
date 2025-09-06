#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

Semaphore *Semaphore::open(unsigned init)
{
    return new Semaphore((int)init);
}

void Semaphore::close()
{
    closed_ = true;
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    {
        t->unblock();
        Scheduler::put(t);
    }

    delete this;
}

int Semaphore::wait()
{
    // TODO: Do we need to disable interrupts?
    if (value_ > 0)
    {
        value_ -= 1;
        return 0;
    }

    // We do not need to remove the thread from the scheduler, just block it, 
    // and add it to the blocked list (waiting queue), then dispatch.
    TCB* old = TCB::running;
    old->block();
    blocked_.addLast(old);
    TCB::yield();

    // TODO: Check if this works as a way of detecting closed semaphores.
    return closed_ ? -1 : 0;
}

void Semaphore::signal()
{
    // Thread should already be in the scheduler, we just need to unblock it.
    if (TCB *t = blocked_.removeFirst())
    {
        t->unblock();
    }
    else
    {
        value_ += 1;
    }
}

Semaphore::Semaphore(int init) : value_(init), blocked_() {}