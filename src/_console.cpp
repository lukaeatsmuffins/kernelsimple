#include "../h/_console.hpp"

int _console::size_ = 128;
CircularBuffer<char>* _console::buffer_in_ = nullptr;
CircularBuffer<char>* _console::buffer_out_ = nullptr;

void _console::handle_console_input()
{
    // TODO: Return EOF on error getc.
    uint64 irq = plic_claim();
    if (irq != CONSOLE_IRQ) {
        plic_complete(irq);
        return;
    }

    uint8 c_stat = *(uint8*)CONSOLE_STATUS;

    while ((c_stat & CONSOLE_RX_STATUS_BIT) && _console::_can_input()) {
        char c = *(uint8*)CONSOLE_RX_DATA;
        _console::_add_to_in(c);
        c_stat = *(uint8*)CONSOLE_STATUS;
    }

    plic_complete(irq);
}

void _console::handle_console_output()
{
    uint8 c_stat = *(uint8*)CONSOLE_STATUS;
    while ((c_stat & CONSOLE_TX_STATUS_BIT) && _console::_can_output()) {
        char c = _console::_remove_from_out();
        *(uint8*)CONSOLE_TX_DATA = c;
        c_stat = *(uint8*)CONSOLE_STATUS;
    }
}
