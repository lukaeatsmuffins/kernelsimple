#pragma once

#ifdef __cplusplus
extern "C" {
#endif

    void consputc(char chr);

    char __getc();

    void console_handler();

#ifdef __cplusplus
}
#endif