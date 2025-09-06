#ifndef OS1_SIMPLE_SEMAPHORE_LOWER_HPP
#define OS1_SIMPLE_SEMAPHORE_LOWER_HPP

#include "list.hpp"

class TCB;

class Semaphore
{
public:
    static Semaphore *open(unsigned init = 1);

    void close();

    int wait();

    void signal();

    Semaphore(const Semaphore &) = delete;
    Semaphore &operator=(const Semaphore &) = delete;

private:
    explicit Semaphore(int init);

    int value_;
    bool closed_;
    List<TCB> blocked_;
};

#endif // OS1_SIMPLE_SEMAPHORE_LOWER_HPP