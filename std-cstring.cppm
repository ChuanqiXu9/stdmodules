module;
#include <cstring>
export module std:cstring;

export namespace std {
  using std::memcpy;
  using std::memmove;
  using std::strcpy;
  using std::strncpy;
  using std::strcat;
  using std::strncat;
  using std::memcmp;
  using std::strcmp;
  using std::strcoll;
  using std::strncmp;
  using std::strxfrm;
  using std::memchr;
  using std::strchr;
  using std::strcspn;
  using std::strpbrk;
  using std::strrchr;
  using std::strspn;
  using std::strstr;
  using std::strtok;
  using std::memset;
  using std::strerror;
  using std::strlen;
}
