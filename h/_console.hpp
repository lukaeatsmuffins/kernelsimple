#ifndef _CONSOLE_HPP
#define _CONSOLE_HPP

#include "semaphore.hpp"
#include "list.hpp"
const int EOF = -1; 

class _console () {
    public:
    static int _getc() {
        wait(mutex_in_);
        char* data_ptr = buffer_in_.removeFirst();
        if (!data_ptr) {
            return EOF;
        }
        char ret = *data_ptr;
        delete data_ptr;
        return static_cast<int>(ret);
    }

    static void _putc(char c) {
        wait(mutex_out_);
        buffer_out_.addLast(new char(c));
    }

    static void remove_from_out() {
        char* ret = buffer_out_.removeFirst();
        signal(mutex_out_);
        return ret;
    }
    static void add_to_in(char c) {
        buffer_in_.addLast(c);
        signal(mutex_in_);
    }

    private:
    static sem_t mutex_in_;
    static sem_t mutex_out_;
    static CircularBuffer buffer_in_;
    static CircularBuffer buffer_out_;
};

template<typename T, int size = 16>
class CircularBuffer {
    public:
    CircularBuffer() : first_idx_(0), last_idx_(0), full_(false) {}

    T* removeFirst() {
        if (first_idx_ == last_idx_ && !full_) {
            return nullptr;
        }
        T* ret = buffer_[first_idx_];
        first_idx_ = (first_idx_ + 1) % size;
        full_ = false;
        return ret;
    }

    T* addLast(T c) {
        if (first_idx_ == last_idx_ && full_) {
            return nullptr;
        }
        buffer_[last_idx_] = c;
        last_idx_ = (last_idx_ + 1) % size;
        if (last_idx_ == first_idx_) {
            full_ = true;
        }
        return buffer_[last_idx_];
    }

    ~CircularBuffer() {}

    private:
    // First full element.
    int first_idx_ = 0;
    // Last free element.
    int last_idx_ = 0;
    T buffer_[size];
    bool full_;
};

#endif