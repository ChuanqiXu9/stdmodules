module;
#include <vector>
export module std:vector;
export namespace std {
    using std::vector;
    
    using std::erase;
    using std::erase_if;
    using std::operator!=;
}
// FIXME: We should put this in <new>.
export {
    using ::operator new;
}
