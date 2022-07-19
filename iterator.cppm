module;
#include <iterator>
export module std:iterator;
export namespace std {
    using std::ostream_iterator;
    using std::iterator_traits;
    using std::distance;
    using std::operator-;

    using std::begin;
    using std::end;
}
