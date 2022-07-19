module;
#include <stdexcept>
export module std:stdexcept;
export namespace std {
    using std::runtime_error;
    using std::logic_error;
    using std::rethrow_exception;
    using std::current_exception;
}
