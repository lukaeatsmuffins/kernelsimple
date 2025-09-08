#ifndef OS1_SYSCALL_CPP_HPP 
#define OS1_SYSCALL_CPP_HPP 

#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "syscall_c.h"

// TODO: Move _new.cpp to this file

class Thread {
    public:
    Thread(void (*body)(void*), void* arg) : body(body), arg(arg) {}
    virtual ~Thread() { /* Upon finishing thread exits by itself. */}
    int start() {
        debug_print("CPP API: Starting thread\n");
        debug_print("CPP API: THIS POINTER: ");
        debug_print((uint64)this);
        debug_print("\n");
        
        if(thread_create(&myHandle, body_exec, (void*)this) != 0) {
            myHandle = nullptr;
            return -1;
        }
        debug_print("CPP API: Thread started\n");
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
    static void body_exec (void* thread);

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