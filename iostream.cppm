module;
#include <iostream>
#include <iomanip>
#include <fstream>
export module std:iostream;
export namespace std {
    using std::cout;
    using std::cerr;
    using std::endl;
    using std::printf;
    using std::boolalpha;
    using std::noboolalpha;
    using std::setw;
    using std::flush;
    using std::istream;
    using std::ostream;
    using std::basic_ostream;
    using std::iostream;
    using std::ifstream;
    using std::basic_stringstream;
    using std::stringstream;
    using std::operator<<;
    using std::operator>>;
}
