//
// Simple counting semaphore compatible with existing scheduler/TCB.
//

#ifndef OS1_SIMPLE_SEMAPHORE_LOWER_HPP
#define OS1_SIMPLE_SEMAPHORE_LOWER_HPP

#include "list.hpp"

class TCB;

class Semaphore
{
public:
    static Semaphore *sem_open(unsigned init = 1);

    int sem_close();

    int sem_wait();

    int sem_signal();

    Semaphore(const Semaphore &) = delete;
    Semaphore &operator=(const Semaphore &) = delete;

private:
    explicit Semaphore(int init);

    int value;
    List<TCB> blocked;
};

#endif // OS1_SIMPLE_SEMAPHORE_LOWER_HPP

