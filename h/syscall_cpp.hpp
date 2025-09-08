#ifndef OS1_SYSCALL_CPP_HPP 
#define OS1_SYSCALL_CPP_HPP 

#include "../lib/hw.h"
#include "tcb.hpp"

// TODO: Move _new.cpp to this file

class Thread {
    public:
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    virtual ~Thread();
    int start();
    static void dispatch();
    static int sleep(time_t t);

    protected:
    Thread();
    virtual void run() {
        body(arg);
    }
    static void trampoline(void* arg) {
        Thread* self = (Thread*)arg;
        if (self) self->run();
    }

    private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
};

class Semaphore {
    public:
    Semaphore(unsigned init = 1) {
        if (sem_open(&myHandle, init) != 0) {
            myHandle = nullptr;
        }
    }
    virtual ~Semaphore() {
        if (myHandle != nullptr) {
            sem_close(myHandle);
        }
    }
    int wait() {
        if (myHandle == nullptr) {
            return -1;
        }
        return sem_wait(myHandle);
    }
    int signal() {
        if (myHandle == nullptr) {
            return -1;
        }
        return sem_signal(myHandle);
    }

    private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    public:
    void terminate();

    protected:
    // TODO: Make sure this doesn't create two threads.
    PeriodicThread(time_t period) : Thread(nullptr, nullptr), period(period) {}
    virtual void run() override {
        while (true) {
            periodicActivation();
        }
    }
    virtual void periodicActivation() {
        Thread::run();
        Thread::sleep(period);
    }

    private:
    time_t period;
};

class Console {
    public:
    static char getc();
    static void putc(char);
};

#endif // OS1_SYSCALL_CPP_HPP