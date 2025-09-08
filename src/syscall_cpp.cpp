#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

Thread::~Thread() {
    thread_exit();
}

int Thread::start() {
    return thread_create(&myHandle, Thread::trampoline, (void*)this);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

void PeriodicThread::terminate() {
    thread_exit();
}

