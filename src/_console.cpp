#include "../h/_console.hpp"

char _console::in_buffer_[_console::IN_SIZE_];
char _console::out_buffer_[_console::OUT_SIZE_];
int _console::in_first_idx_ = 0;
int _console::in_last_idx_ = 0;
bool _console::in_full_ = false;
int _console::out_first_idx_ = 0;
int _console::out_last_idx_ = 0;
bool _console::out_full_ = false;