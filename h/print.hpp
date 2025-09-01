#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP

#include "../lib/hw.h"

extern void printString(char const *string);

extern void printInteger(uint64 integer);

// Used to print debug messages in debug mode.
extern void debug_print(char const *string);

// Used to print debug messages in debug mode.
extern void debug_print(int64 integer);

// Used as a basic assert macro. Used in debug mode only.
extern void assert(bool condition, char const *debug_message);


#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP
