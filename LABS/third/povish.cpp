#include <iostream>
#include <vector>

using namespace std;

template<class T>
bool isnull(T t) { return t > 0; };

template<typename T, typename P>
bool all_of(const T &b, const T &e, P &p) {
    for (T i = b; i != e; i++) if (p(*i) == false) return false;
    return true;
};

int main(int argc, char **argv) {
    vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);
    cout << all_of(v.begin(), v.end(), isnull<int>);
    return 0;
}