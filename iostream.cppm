module;
#include <iostream>
#include <iomanip>
export module std:iostream;
export namespace std {
    using std::cout;
    using std::endl;
    using std::printf;
    using std::boolalpha;
    using std::noboolalpha;
    using std::setw;
    using std::flush;
    using std::operator<<;
}
