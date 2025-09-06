//
// Created by marko on 20.4.22..
//

// #include "../lib/mem.h"
#include "../h/mem.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    return MemoryAllocator::getInstance()->mem_alloc(n);
}

void *operator new[](size_t n)
{
    return MemoryAllocator::getInstance()->mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    MemoryAllocator::getInstance()->mem_free(p);
}

void operator delete[](void *p) noexcept
{
    MemoryAllocator::getInstance()->mem_free(p);
}