module;
#include <functional>
export module std:functional;
export namespace std {
    using std::function;
    using std::invoke;
    using std::bind;
    
    using std::ref;
    using std::cref;

    using std::mem_fn;

    using std::operator==;
}

// FIXME: We couldn't export noninline-const variables.
namespace std::placeholders {
    export inline constexpr decltype(std::placeholders::_1) _1_placeholder = std::placeholders::_1;
    export inline constexpr decltype(std::placeholders::_2) _2_placeholder = std::placeholders::_2;
    export inline constexpr decltype(std::placeholders::_3) _3_placeholder = std::placeholders::_3;
}
