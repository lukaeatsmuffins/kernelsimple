//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"

List<TCB> Scheduler::readyThreadQueue;
SleepingThreadList Scheduler::sleepingThreadQueue;
SleepingThreadList Scheduler::joiningThreadQueue;

TCB *Scheduler::get()
{
    // debug_print("Getting thread\n");
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    // debug_print("Putting thread\n");
    readyThreadQueue.addLast(ccb);
}

void Scheduler::putToSleep(uint64 time_slices_left)
{
    thread_t t = TCB::running;
    t->setSleeping(true);
    // TODO: Do not add last, add where appropriate.
    sleepingThreadQueue.addSleepingThread(new SleepingThread(t, time_slices_left));
    debug_print("Putting to sleep\n");
    debug_print((uint64)t);
    debug_print((uint64)time_slices_left);
    debug_print("\n");
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

        debug_print("Waking up thread\n");
        debug_print((uint64)st->tcb_);
        debug_print("\n");

        st = sleepingThreadQueue.peekFirst();
    }
}


void Scheduler::join(uint64 time_slices_left)
{
    thread_t t = TCB::running;
    joiningThreadQueue.addSleepingThread(new SleepingThread(t, time_slices_left));
    TCB::yield();
}

void Scheduler::maybeReleaseJoiningThreads() {
    SleepingThread *st = joiningThreadQueue.peekFirst();
    if (st) {
        st->time_slices_left_--;
        assert(st->time_slices_left_ >= 0, "Thread should already be out of sleep.");
    }

    while (st && st->time_slices_left_ == 0) {
        joiningThreadQueue.removeFirst();
        st->tcb_->unjoin();

        delete st;
        st = sleepingThreadQueue.peekFirst();
    }
}