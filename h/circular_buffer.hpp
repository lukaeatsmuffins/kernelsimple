#ifndef CIRCULAR_BUFFER_HPP
#define CIRCULAR_BUFFER_HPP

#include "../h/syscall_c.h"
#include "semaphore.hpp"
#include "mem.hpp"

template<typename T>
class CircularBuffer {
    public:
    static CircularBuffer<T> *createInstance(int size) {
        CircularBuffer<T> *instance = (CircularBuffer<T>*)MemoryAllocator::getInstance()->mem_alloc(sizeof(CircularBuffer<T>));
        instance->first_idx_ = 0;
        instance->last_idx_ = 0;
        instance->size_ = size+1;
        instance->item_ = _semaphore::open(0);
        instance->space_ = _semaphore::open(size);
        instance->mutex_ = _semaphore::open(1);
        instance->buffer_ = (T*)MemoryAllocator::getInstance()->mem_alloc(sizeof(T) * instance->size_);
        return instance;
    }

    CircularBuffer(int size = 16) : first_idx_(0), last_idx_(0), size_(size+1) {
        item_ = _semaphore::open(0);
        space_ = _semaphore::open(size);
        mutex_ = _semaphore::open(1);
        buffer_ = (T*)mem_alloc(sizeof(T) * size_);
    }

    ~CircularBuffer() {
        item_->close();
        space_->close();
        mutex_->close();
    }

    T removeFirst() {
        item_->wait();
        mutex_->wait();
        T ret = buffer_[first_idx_];
        first_idx_ = (first_idx_ + 1) % size_;
        mutex_->signal();
        space_->signal();
        return ret;
    }

    T addLast(T c) {
        space_->wait();
        mutex_->wait();
        T ret = buffer_[last_idx_];
        buffer_[last_idx_] = c;
        last_idx_ = (last_idx_ + 1) % size_;
        mutex_->signal();
        item_->signal();
        return ret;
    }

    int getCnt() {
        int ret = 0;
        mutex_->wait();

        if (last_idx_ >= first_idx_) {
            ret = last_idx_ - first_idx_;
        } else {
            ret = size_ - first_idx_ + last_idx_;
        }

        mutex_->signal();
        return ret;
    }

    private:
    sem_t item_;
    sem_t space_;
    sem_t mutex_;

    // First full element.
    int first_idx_ = 0;
    // Last free element.
    int last_idx_ = 0;
    // Size of the buffer.
    int size_;
    // Buffer.
    T* buffer_;
};

#endif // CIRCULAR_BUFFER_HPP