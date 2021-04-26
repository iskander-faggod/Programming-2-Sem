#include <iostream>

using namespace std;

template<class T>
class CircularBuffer {
private:
    int size{};
    int capacity{};
    T *bufferData;

public:

    class Iterator {
    private:
        T *currentValue;
    public:
        explicit Iterator(T *firstElement_) {
            this->currentValue = firstElement_;
        }

        //OPERATORS
        Iterator operator+(int value) {
            currentValue += value;
            return *this;
        }

        Iterator operator-(int value) {
            currentValue -= value;
            return *this;
        }

        T &operator*() const {
            return *currentValue;
        }

        T *operator->() const {
            return currentValue;
        }

        Iterator operator++() {
            currentValue++;
            return *this;
        }

        Iterator operator--() {
            currentValue--;
            return *this;
        }

        Iterator operator==(const Iterator &other) {
            return this->currentValue = other.currentValue;
        }

        Iterator operator!=(const Iterator &other) {
            return this->currentValue != other.currentValue;
        }

        Iterator operator>(const Iterator &other) {
            return this->currentValue > other.currentValue;
        }

        Iterator operator>=(const Iterator &other) {
            return this->currentValue >= other.currentValue;
        }

        Iterator operator<(const Iterator &other) {
            return this->currentValue < other.currentValue;
        }

        Iterator operator<=(const Iterator &other) {
            return this->currentValue <= other.currentValue;
        }
    };

    CircularBuffer() = default;

    CircularBuffer(int size, int capacity) {
        this->size = size;
        this->capacity = capacity;
        bufferData = new T[capacity];
    }

    CircularBuffer(const CircularBuffer &other) {
        this->size = other.size;
        this->capacity = other.capacity;
        this->bufferData = other.bufferData;
    }


    //NEEDED FUNCS
    [[nodiscard]] int getSize() const {
        return this->size;
    }

    [[nodiscard]] int getCapacity() const {
        return this->capacity;
    }


    Iterator start() const {
        return Iterator(bufferData);
    }

    Iterator end() const {
        return Iterator(bufferData + size - 1);
    }

    void insertFront(T &value) {
        if (size > capacity) {
            throw invalid_argument("Buffer is full");
        } else {
            size++;
            for (auto i = size; i >= 1; i--) {
                bufferData[i] = bufferData[i - 1];
            }
            bufferData[0] = value;
        }
    }

    void insertBack(T &value) {
        if (size > capacity) {
            throw invalid_argument("Buffer is full");
        } else {
            size++;
            bufferData[size] = value;
        }
    }

    void popFront() {
        if (size != 0) {
            for (auto i = 0; i < size - 1; i++) {
                bufferData[i] = bufferData[i + 1];
            }
            size--;
        } else {
            throw invalid_argument("Buffer is empty");
        }
    }

    void popBack() {
        if (size != 0) {
            size--;
        } else {
            throw invalid_argument("Buffer is empty");
        }
    }

    void setCapacity(int value) {
        if (value < capacity) {
            this->capacity = value;
        } else {
            if (size > value){
                for (auto i = value; i < capacity; i++) {
                    delete bufferData[i];
                }
                this->capacity = value;
            }
            else {
                this->capacity = value;
            }
        }
    }

    T operator[](int index) {
        return bufferData[index % capacity];
    }


    ~CircularBuffer() {
        delete[] bufferData;
    }


protected:
};


int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
