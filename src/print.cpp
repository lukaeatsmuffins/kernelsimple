#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"


void debug_print(uint64 integer) {
    #if DEBUG_PRINT == 1
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    debug_print_internal_int(integer);
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    #endif
}

void debug_print(char const *string) {
    #if DEBUG_PRINT == 1
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    debug_print_internal_string(string);
    // debug_print_internal_string("\n---------------------DEBUG_PRINT-----------------------\n");
    #endif
}

void assert(bool condition, char const *debug_message) {
    if (!condition) {
        debug_print("Assertion failed: ");
        debug_print(debug_message);
        debug_print("\n");
    }
}

void debug_print_internal_string(char const *string)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    {
        __putc(*string);
        string++;
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void debug_print_internal_int(uint64 integer)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (integer < 0)
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    }

    i = 0;
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}