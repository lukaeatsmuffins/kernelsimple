#ifndef OS1_SIMPLE_SEMAPHORE_LOWER_HPP
#define OS1_SIMPLE_SEMAPHORE_LOWER_HPP

#include "list.hpp"

class TCB;

class _semaphore
{
public:
    static _semaphore *open(unsigned init = 1);

    void close();

    int wait();

    void signal();

    _semaphore(const _semaphore &) = delete;
    _semaphore &operator=(const _semaphore &) = delete;

private:
    explicit _semaphore(int init);

    int value_;
    bool closed_;
    List<TCB> blocked_;
};

#endif // OS1_SIMPLE_SEMAPHORE_LOWER_HPP