#include "../h/syscall_c.h"
#include "get_tid_test.hpp"
#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;
static volatile bool finishedE = false;
static volatile bool finishedF = false;
static volatile bool finishedG = false;
static volatile bool finishedH = false;
static volatile bool finishedI = false;
static volatile bool finishedJ = false;
static volatile bool finishedK = false;
static volatile bool finishedL = false;
static volatile bool finishedM = false;

static void workerBodyA(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: a\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedA = true;
}

static void workerBodyC(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: c\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedC = true;
}

static void workerBodyB(void* arg) {
    for (int i = 0; i < 10; i++) {
    int tid = getThreadId();
    printString("Thread name: b\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }

    finishedB = true;
}

static void workerBodyD(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: d\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedD = true;
}

static void workerBodyE(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: e\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedE = true;
}

static void workerBodyF(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: f\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedF = true;
}

static void workerBodyG(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: g\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedG = true;
}

static void workerBodyH(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: h\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedH = true;
}

static void workerBodyI(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: i\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedI = true;
}

static void workerBodyJ(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: j\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedJ = true;
}

static void workerBodyK(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: k\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedK = true;
}

static void workerBodyL(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: l\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedL = true;
}

static void workerBodyM(void* arg) {
    for (int i = 0; i < 10; i++) {
        int tid = getThreadId();
        printString("Thread name: m\n");
        printString("Thread ID: ");
        printInt(tid);
        printString("\n");
        time_sleep(50);
    }
    finishedM = true;
}
 
void getThreadIdTest() {
    thread_t threads[13];

    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");

    thread_create(&threads[3], workerBodyD, nullptr);
    printString("ThreadD created\n");

    thread_create(&threads[4], workerBodyE, nullptr);
    printString("ThreadE created\n");

    thread_create(&threads[5], workerBodyF, nullptr);
    printString("ThreadF created\n");

    thread_create(&threads[6], workerBodyG, nullptr);
    printString("ThreadG created\n");

    thread_create(&threads[7], workerBodyH, nullptr);
    printString("ThreadH created\n");

    thread_create(&threads[8], workerBodyI, nullptr);
    printString("ThreadI created\n");

    thread_create(&threads[9], workerBodyJ, nullptr);
    printString("ThreadJ created\n");

    thread_create(&threads[10], workerBodyK, nullptr);
    printString("ThreadK created\n");

    thread_create(&threads[11], workerBodyL, nullptr);
    printString("ThreadL created\n");

    thread_create(&threads[12], workerBodyM, nullptr);
    printString("ThreadM created\n");

    while (!(finishedA && finishedB && finishedC && finishedD && finishedE && finishedF && finishedG && finishedH && finishedI && finishedJ && finishedK && finishedL && finishedM)) {
        thread_dispatch();
    }
}
