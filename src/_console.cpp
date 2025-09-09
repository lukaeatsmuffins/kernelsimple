#include "../h/_console.hpp"

int _console::size_ = 16;
CircularBuffer<char>* _console::buffer_in_ = nullptr;
CircularBuffer<char>* _console::buffer_out_ = nullptr;