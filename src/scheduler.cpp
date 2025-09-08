//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

List<TCB> Scheduler::readyThreadQueue;
List<SleepingThread> Scheduler::sleepingThreadQueue;

TCB *Scheduler::get()
{
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}

void Scheduler::putToSleep(uint64 time_slices_left)
{
    thread_t t = TCB::running;
    t->setSleeping(true);
    // TODO: Do not add last, add where appropriate.
    sleepingThreadQueue.addByRule(new SleepingThread(t, time_slices_left), SleepingThread::_scheduler_rule, 0);
    TCB::yield();
}

void Scheduler::maybeWakeThreads() {
    // Every time this is called, we expect to have passed a single time_slice.

    SleepingThread *st = sleepingThreadQueue.peekFirst();
    if (st) {
        st->time_slices_left_--;
        assert(st->time_slices_left_ >= 0, "Thread should already be out of sleep.");
    }

    // After decrementing, check if the thread is ready to wake up.
    while (st && st->time_slices_left_ == 0) {
        // If the first thread is ready to wake up, unsleep it and add it back
        // to the ready queue. It will be called at some point.
        sleepingThreadQueue.removeFirst();
        st->tcb_->setSleeping(false);
        readyThreadQueue.addLast(st->tcb_);

        // Delete the sleeping thread object we created.
        delete st;

        st = sleepingThreadQueue.peekFirst();
    }
}