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

};

class SleepingThreadList;

class Scheduler
{
private:
    static List<TCB> readyThreadQueue;
    static SleepingThreadList sleepingThreadQueue;
    static SleepingThreadList joiningThreadQueue;

public:
    static TCB *get();

    static void put(TCB *tcb);

    static void putToSleep(uint64 time_slices_left);

    static void maybeWakeThreads();

    static void maybeReleaseJoiningThreads();

    static void join(uint64 time_slices_left);

};

class SleepingThreadList
{
private:
    struct Elem
    {
        SleepingThread *data;
        Elem *next;

        Elem(SleepingThread *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(0), tail(0) {}

    SleepingThreadList(const SleepingThreadList &) = delete;

    SleepingThreadList &operator=(const SleepingThreadList &) = delete;

    void addFirst(SleepingThread *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(SleepingThread *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    SleepingThread *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        SleepingThread *ret = elem->data;
        delete elem;
        return ret;
    }

    SleepingThread *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    SleepingThread *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        SleepingThread *ret = elem->data;
        delete elem;
        return ret;
    }

    SleepingThread *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    void addSleepingThread(SleepingThread *data) {
        Elem* prev = nullptr, *curr = head;
        uint64 counter = 0;

        while (curr && (counter + curr->data->time_slices_left_ <= data->time_slices_left_)) {
            counter += curr->data->time_slices_left_;
            prev = curr;
            curr = curr->next;
        }

        Elem* elem = new Elem(data, curr);

        data->time_slices_left_ -= counter;

        if (curr) { curr->data->time_slices_left_ -= data->time_slices_left_; }

        if (prev) { prev->next = elem; }
        else { head = elem; }
        if (!curr) { tail = elem; }
    }
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_SCHEDULER_HPP
