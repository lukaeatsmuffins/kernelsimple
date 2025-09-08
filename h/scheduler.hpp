//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP

#include "list.hpp"
#include "print.hpp"
#include "../lib/hw.h"

class TCB;

typedef TCB* thread_t;

struct SleepingThread {
    thread_t tcb_;
    uint64 time_slices_left_;
    SleepingThread(TCB *tcb, uint64 time_slices_left) : tcb_(tcb), time_slices_left_(time_slices_left) {}

    static bool _scheduler_rule(SleepingThread *prev, SleepingThread *curr, uint64& counter) {
        counter += prev->time_slices_left_;
        return counter >= curr->time_slices_left_;
    }
};

class Scheduler
{
private:
    static List<TCB> readyThreadQueue;
    static List<SleepingThread> sleepingThreadQueue;

public:
    static TCB *get();

    static void put(TCB *tcb);

    static void putToSleep(uint64 time_slices_left);

    static void maybeWakeThreads();

};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
