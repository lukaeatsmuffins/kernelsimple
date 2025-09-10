//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/_console.hpp"

void userMain();

void userMainWrapper(void* arg)
{
    debug_print("Starting userMain\n");
    userMain();
}

// void randomWrapper(void* arg) {
//     debug_print("Starting random\n");
// }

int main()
{
    thread_t main_handle;
    thread_t userMain_handle;

    // We create threads directly through TCB because we do not yet have
    // interrupts enabled.
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
    _console::init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Thread randomThread(randomWrapper, nullptr);
    // randomThread.start();

    while (!userMain_handle->isFinished()) {
        // TCB::yield(); // This causes a lock???
    }

    debug_print("Finished\n");

    // TODO: Write exit.
    // Emulator RISC-V procesora je moguće zaustaviti izvršavanjem odgovarajućih
    // instrukcija. Upisom 32-bitne vrednosti 0x5555 na adresu 0x100000 emulator RISC-V
    // procesora se zaustavlja. Na ovaj način je moguće zaustaviti proces emulatora nakon što završi
    // korisnički program.
    // exit();
    return 0;
}
