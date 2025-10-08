//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

// Thread Control Block
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished_; }

    void setFinished(bool value) { finished_ = value; }

    void block() { blocked_ = true; }

    void unblock() { blocked_ = false; }

    void unjoin() { joined_ = false; }

    bool isBlocked() { return blocked_; }

    void setSleeping(bool value) { sleeping_ = value; }

    bool isSleeping() { return sleeping_; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);

    static TCB *createThread(Body body, void* arg = nullptr);

    // Let's scheduler decide the next process.
    static void yield();

    static TCB *running;

    static int getThreadId() { return running->tid_; }

    void join(thread_t handle, time_t time);

private:
    TCB(Body body, void* arg, uint64 timeSlice) :
            body(body),
            arg_(arg),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            tid_(++TCB::lastThreadId),
            finished_(false),
            blocked_(false),
            sleeping_(false),
            joined_(false)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg_;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    int tid_;
    bool finished_;
    bool blocked_;
    bool sleeping_;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    // Releases the old process and starts a new one.
    static void dispatch();

    // Exits the currently running thread.
    static void exit();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;

    bool joined_;

    static int lastThreadId;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
