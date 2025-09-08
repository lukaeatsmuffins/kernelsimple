#ifndef OS1_SYSCALL_CPP_HPP 
#define OS1_SYSCALL_CPP_HPP 

#include "../lib/hw.h"
#include "../lib/console.h"
#include "syscall_c.h"

// TODO: Move _new.cpp to this file

class Thread {
    public:
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    virtual ~Thread() {
        // TODO: Maybe check.
        // This normally exits the currently running thread. I am not sure if 
        // this will be called from a currently running thread though. In other
        // words, if a different thread calls this thread's destructor, will
        // that thread exit or will the thread this object is managing exit?
        thread_exit();
    }
    int start() {
        // TODO: Should we first initialize the thread without it starting?
        // The current implementation of TCB doesn't allow for this.
        // return myHandle->start();
        if(thread_create(&myHandle, &Thread::body_exec, this) != 0) {
            myHandle = nullptr;
            return -1;
        }
        return 0;
    }
    static void dispatch() {
        thread_dispatch();
    }
    static int sleep(time_t time) {
        return 0;
    }

    protected:
    Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    // TODO: Where should run be called and what should it do?
    virtual void run() {
        body(arg);
    }

    private:

    static void body_exec (void* thread) {
        static_cast<Thread*>(thread)->run();
    }

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
    void terminate() {
        thread_exit();
    }

    protected:
    // TODO: Make sure this doesn't create two threads.
    PeriodicThread(time_t period) : period(period) {}
    virtual void run() override {
        while (true) {
            periodicActivation();
            time_sleep(period);
        }
    }

    virtual void periodicActivation() = 0;

    private:
    time_t period;
};

class Console {
    public:
    static char getc() { return __getc(); };
    static void putc(char c) { __putc(c); };
};

#endif // OS1_SYSCALL_CPP_HPP