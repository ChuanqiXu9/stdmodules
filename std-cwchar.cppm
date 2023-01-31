module;
#include <cwchar>
export module std:cwchar;

export namespace std {
  using std::wint_t;

  using std::fwprintf;
  using std::fwscanf;
  using std::swprintf;
  using std::swscanf;
  using std::vfwprintf;
  using std::vfwscanf;
  using std::vswprintf;
  using std::vswscanf;
  using std::vwprintf;
  using std::vwscanf;
  using std::wprintf;
  using std::wscanf;
  using std::fgetwc;
  using std::fgetws;
  using std::fputwc;
  using std::fputws;
  using std::fwide;
  using std::getwc;
  using std::getwchar;
  using std::putwc;
  using std::putwchar;
  using std::ungetwc;
  using std::wcstod;
  using std::wcstof;
  using std::wcstold;
  using std::wcstol;
  using std::wcstoll;
  using std::wcstoul;
  using std::wcstoull;
  using std::wcscpy;
  using std::wcsncpy;
  using std::wmemcpy;
  using std::wmemmove;
  using std::wcscat;
  using std::wcsncat;
  using std::wcscmp;
  using std::wcscoll;
  using std::wcsncmp;
  using std::wcsxfrm;
  using std::wmemcmp;
  using std::wcschr;
  using std::wcscspn;
  using std::wcspbrk;
  using std::wcsrchr;
  using std::wcsspn;
  using std::wcsstr;
  using std::wcstok;
  using std::wmemchr;
  using std::wcslen;
  using std::wmemset;
  using std::wcsftime;
  using std::btowc;
  using std::wctob;

  using std::mbsinit;
  using std::mbrlen;
  using std::mbrtowc;
  using std::wcrtomb;
  using std::mbsrtowcs;
  using std::wcsrtombs;
}
