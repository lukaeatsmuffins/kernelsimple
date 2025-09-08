#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

// void printString(char const *string)
// {
//     uint64 sstatus = Riscv::r_sstatus();
//     Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
//     while (*string != '\0')
//     {
//         __putc(*string);
//         string++;
//     }
//     Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
// }

void debug_print(uint64 integer) {
    #if DEBUG_PRINT == 1
    printInt(integer);
    #endif
}

void debug_print(char const *string) {
    #if DEBUG_PRINT == 1
    printString(string);
    #endif
}

void assert(bool condition, char const *debug_message) {
    if (!condition) {
        debug_print("Assertion failed: ");
        debug_print(debug_message);
        debug_print("\n");
    }
}

// void printInteger(uint64 integer)
// {
//     uint64 sstatus = Riscv::r_sstatus();
//     Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
//     static char digits[] = "0123456789";
//     char buf[16];
//     int i, neg;
//     uint x;

//     neg = 0;
//     if (integer < 0)
//     {
//         neg = 1;
//         x = -integer;
//     } else
//     {
//         x = integer;
//     }

//     i = 0;
//     do
//     {
//         buf[i++] = digits[x % 10];
//     } while ((x /= 10) != 0);
//     if (neg)
//         buf[i++] = '-';

//     while (--i >= 0) { __putc(buf[i]); }
//     Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
// }