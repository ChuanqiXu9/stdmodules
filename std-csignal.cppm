module;
#include <csignal>
export module std:csignal;

export namespace std {
  using std::sig_atomic_t;
  using std::signal;
  using std::raise;
}
