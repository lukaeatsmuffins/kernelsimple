//
// Simple counting semaphore compatible with existing scheduler/TCB.
//

#ifndef OS1_SIMPLE_SEMAPHORE_HPP
#define OS1_SIMPLE_SEMAPHORE_HPP

#include "tcb.hpp"
#include "scheduler.hpp"
#include "list.hpp"
#include "riscv.hpp"

class Semaphore
{
public:
    // Create a semaphore with initial value 'init'.
    static Semaphore *sem_open(unsigned init = 1)
    {
        return new Semaphore((int)init);
    }

    // Close the semaphore and wake all blocked threads.
    // After this call, the semaphore must not be used.
    int sem_close()
    {
        uint64 saved = Riscv::r_sstatus();
        Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

        // Wake all blocked threads
        while (TCB *t = blocked.removeFirst())
        {
            Scheduler::put(t);
        }

        // Restore interrupts before deleting 'this'
        if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }

        delete this;
        return 0;
    }

    // Decrement the semaphore or block if value is 0.
    int sem_wait()
    {
        uint64 saved = Riscv::r_sstatus();
        Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

        if (value > 0)
        {
            value -= 1;
            if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }
            return 0;
        }

        // Block current thread
        blocked.addLast(TCB::running);
        TCB::dispatch();

        // When resumed, continue with interrupts still disabled here
        if (saved & Riscv::SSTATUS_SIE) { Riscv::ms_sstatus(Riscv::SSTATUS_SIE); }
        return 0;
    }

    // Increment the semaphore and wake one blocked thread if any.
    int sem_signal()
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

    Semaphore(const Semaphore &) = delete;
    Semaphore &operator=(const Semaphore &) = delete;

private:
    explicit Semaphore(int init) : value(init), blocked() {}

    int value;
    List<TCB> blocked;
};

#endif // OS1_SIMPLE_SEMAPHORE_HPP

