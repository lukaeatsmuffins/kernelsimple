#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

