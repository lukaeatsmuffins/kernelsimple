//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/_console.hpp"

void exit() {
    debug_print("Exiting kernel.\n");
    *((uint32*)0x100000) = 0x5555;
}

void userMain();

void userMainWrapper(void* arg)
{
    userMain();
    return;
}

void main()
{
    thread_t main_handle;
    thread_t userMain_handle;

    // // Initialize console.
    debug_print("Initializing console\n");
    _console::_console_init();

    // // We create threads directly through TCB because we do not yet have
    // // interrupts enabled.
    debug_print("Creating main thread\n");
    main_handle = TCB::createThread(nullptr, nullptr);
    debug_print("Main thread handle: \n");
    debug_print((uint64)main_handle);
    debug_print("\n");

    debug_print("Creating userMain thread\n");
    userMain_handle = TCB::createThread(userMainWrapper, nullptr);
    debug_print("UserMain thread handle: \n");
    debug_print((uint64)userMain_handle);
    debug_print("\n");

    debug_print("Setting running to main thread\n");
    TCB::running = main_handle;

    debug_print("Setting supervisor trap and enabling interrupts\n");
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // // Thread randomThread(randomWrapper, nullptr);
    // // randomThread.start();

    while (!userMain_handle->isFinished()) {
        thread_dispatch();
    }
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    debug_print("Exiting main\n");
    while(_console::_can_output()) {
        _console::handle_console_output();
        debug_print("Can output\n");
    }
    exit();
}
