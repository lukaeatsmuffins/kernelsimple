//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

void userMainWrapper(void* arg)
{
    userMain();
}

int main()
{
    thread_t main_handle;
    thread_t userMain_handle;
    thread_create(&main_handle, nullptr, nullptr);
    thread_create(&userMain_handle, userMainWrapper, nullptr);
    TCB::running = main_handle;

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (userMain_handle) {
        thread_dispatch();
    }

    printString("Finished\n");

    return 0;
}
