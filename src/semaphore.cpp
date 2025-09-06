//
// Simple counting semaphore compatible with existing scheduler/TCB.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

Semaphore *Semaphore::sem_open(unsigned init)
{
    return new Semaphore((int)init);
}

int Semaphore::sem_close()
{
    while (TCB *t = blocked.removeFirst())
    {
        Scheduler::put(t);
    }

    delete this;
    return 0;
}

int Semaphore::sem_wait()
{
    if (value > 0)
    {
        value -= 1;
        return 0;
    }

    blocked.addLast(TCB::running);
    TCB::dispatch();
    return 0;
}

int Semaphore::sem_signal()
{
    if (TCB *t = blocked.removeFirst())
    {
        Scheduler::put(t);
    }
    else
    {
        value += 1;
    }
    return 0;
}

Semaphore::Semaphore(int init) : value(init), blocked() {}

