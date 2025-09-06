//
// Simple counting semaphore compatible with existing scheduler/TCB.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
#include "../h/riscv.hpp"

Semaphore *Semaphore::sem_open(unsigned init)
{
    return new Semaphore((int)init);
}

int Semaphore::sem_close()
{
    uint64 saved = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (TCB *t = blocked.removeFirst())
    {
        Scheduler::put(t);
    }

    if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }

    delete this;
    return 0;
}

int Semaphore::sem_wait()
{
    uint64 saved = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    if (value > 0)
    {
        value -= 1;
        if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }
        return 0;
    }

    blocked.addLast(TCB::running);
    TCB::dispatch();

    if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }
    return 0;
}

int Semaphore::sem_signal()
{
    uint64 saved = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    if (TCB *t = blocked.removeFirst())
    {
        Scheduler::put(t);
    }
    else
    {
        value += 1;
    }

    if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }
    return 0;
}

Semaphore::Semaphore(int init) : value(init), blocked() {}

