module;
#include <cfenv>
export module std:cfenv;

export namespace std {
  using std::fenv_t;
  using std::fexcept_t;

  using std::feclearexcept;
  using std::fegetexceptflag;
  using std::feraiseexcept;
  using std::fesetexceptflag;
  using std::fetestexcept;

  using std::fegetround;
  using std::fesetround;

  using std::fegetenv;
  using std::feholdexcept;
  using std::fesetenv;
  using std::feupdateenv;
}
