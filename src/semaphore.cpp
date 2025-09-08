#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
#include "../h/print.hpp"

_semaphore *_semaphore::open(unsigned init)
{
    debug_print("Semaphore open: Initializing semaphore with value: ");
    debug_print((uint64)init);
    debug_print("\n");
    return new _semaphore((int)init);
}

void _semaphore::close()
{
    debug_print("Semaphore close: Closing semaphore\n");
    closed_ = true;
    // Deblock all of the threads and put them back into the scheduler.
    while (TCB *t = blocked_.removeFirst())
    {
        t->unblock();
        Scheduler::put(t);
    }
}

int _semaphore::wait()
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

void _semaphore::signal()
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

_semaphore::_semaphore(int init) : value_(init), closed_(false), blocked_() {}