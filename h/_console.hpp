#ifndef _CONSOLE_HPP
#define _CONSOLE_HPP

#include "semaphore.hpp"
#include "list.hpp"
#include "../lib/hw.h"
const int EOF = -1;

class _console {
public:
    static int _getc() {
        if (in_first_idx_ == in_last_idx_ && !in_full_) return EOF;
        char c = in_buffer_[in_first_idx_];
        in_first_idx_ = (in_first_idx_ + 1) % IN_SIZE_;
        in_full_ = false;
        return static_cast<int>(c);
    }

    static void _putc(char c) {
        // drop if full
        if (out_first_idx_ == out_last_idx_ && out_full_) return;
        out_buffer_[out_last_idx_] = c;
        out_last_idx_ = (out_last_idx_ + 1) % OUT_SIZE_;
        if (out_last_idx_ == out_first_idx_) out_full_ = true;
    }

    static char _remove_from_out() {
        if (out_first_idx_ == out_last_idx_ && !out_full_) return 0;
        char c = out_buffer_[out_first_idx_];
        out_first_idx_ = (out_first_idx_ + 1) % OUT_SIZE_;
        out_full_ = false;
        return c;
    }

    static void add_to_in(char c) {
        if (in_first_idx_ == in_last_idx_ && in_full_) return;
        in_buffer_[in_last_idx_] = c;
        in_last_idx_ = (in_last_idx_ + 1) % IN_SIZE_;
        if (in_last_idx_ == in_first_idx_) in_full_ = true;
    }

    static bool _can_output() {
        if (out_first_idx_ == out_last_idx_) return out_full_;
        int cnt = (out_last_idx_ >= out_first_idx_)
                  ? (out_last_idx_ - out_first_idx_)
                  : (OUT_SIZE_ - out_first_idx_ + out_last_idx_);
        return cnt > 0;
    }

    static void init(int in_size = 128, int out_size = 128) {
        (void)in_size; (void)out_size; // fixed sizes in this build
        in_first_idx_ = in_last_idx_ = 0; in_full_ = false;
        out_first_idx_ = out_last_idx_ = 0; out_full_ = false;
    }

private:
    static constexpr int IN_SIZE_ = 256;
    static constexpr int OUT_SIZE_ = 256;
    static char in_buffer_[IN_SIZE_];
    static char out_buffer_[OUT_SIZE_];
    static int in_first_idx_, in_last_idx_; static bool in_full_;
    static int out_first_idx_, out_last_idx_; static bool out_full_;
};

#endif