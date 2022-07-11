module;
#include <string>
export module std:string;
export namespace std {
    using std::string;
    using std::basic_string;
    using std::basic_string_view;
    
    using std::operator+;

    inline namespace literals {
        using std::literals::operator""s;
    }
}
