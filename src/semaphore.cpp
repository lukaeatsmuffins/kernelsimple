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
}

int Semaphore::wait()
{
    // Cannot wait on a closed semaphore.
    if (closed_)
    {
        return -1;
    }

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
    return 0;
}

void Semaphore::signal()
{
    if (TCB *t = blocked_.removeFirst())
    {
        t->unblock();
        Scheduler::put(t);
    }
    else
    {
        value_ += 1;
    }
}

Semaphore::Semaphore(int init) : value_(init), blocked_() {}