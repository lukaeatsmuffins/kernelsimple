#ifndef _CONSOLE_HPP
#define _CONSOLE_HPP

#include "circular_buffer.hpp"
#include "print.hpp"

class _console {
    public:
    static void _console_init() {
        debug_print("Creating buffers\n");
        buffer_in_ = CircularBuffer<char>::createInstance(size_);
        buffer_out_ = CircularBuffer<char>::createInstance(size_);
        debug_print("Buffers created\n");
    }
    static void _console_destroy() {
        delete buffer_in_;
        delete buffer_out_;
    }

    static char _getc() {
        return buffer_in_->removeFirst();
    }

    static void _putc(char c) {
        buffer_out_->addLast(c);
    }

    static bool _can_output() {
        auto ret = buffer_out_->getCnt();
        return ret > 0;
    }

    static bool _can_input() {
        return buffer_in_->getCnt() < size_;
    }

    static char _remove_from_out() {
        char ret = buffer_out_->removeFirst();
        return ret;
    }
    static void _add_to_in(char c) {
        buffer_in_->addLast(c);
    }

    // Handles getc requests.
    static void handle_console_input();

    // Handles putc requests.
    static void handle_console_output();

    private:
    static int size_;
    static CircularBuffer<char> *buffer_in_;
    static CircularBuffer<char> *buffer_out_;
};


#endif