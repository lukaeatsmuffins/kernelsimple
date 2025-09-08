// Out-of-line implementation for the C++ syscall trampoline.
#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void Thread::body_exec(void* thread) {
    static_cast<Thread*>(thread)->run();
}


