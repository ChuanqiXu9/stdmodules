module;
#include <cmath>
export module std:cmath;

export namespace std {
  using std::float_t;
  using std::double_t;

  // some variants of std::*{f,l} are missing, see
  // https://gcc.gnu.org/bugzilla/show_bug.cgi?id=79700
  using std::acos;
  using std::asin;
  using std::atan;
  using std::atan2;
  using std::cos;
  using std::sin;
  using std::tan;
  using std::acosh;
  using std::asinh;
  using std::atanh;
  using std::cosh;
  using std::sinh;
  using std::tanh;
  using std::exp;
  using std::exp2;
  using std::exp2f;
  using std::exp2l;

  using std::expm1;
  using std::expm1f;
  using std::expm1l;

  using std::frexp;
  using std::ilogb;
  using std::ilogbf;
  using std::ilogbl;

  using std::ldexp;

  using std::log;

  using std::log10;

  using std::log1p;
  using std::log1pf;
  using std::log1pl;

  using std::log2;
  using std::log2f;
  using std::log2l;

  using std::logb;
  using std::logbf;
  using std::logbl;

  using std::modf;

  using std::scalbn;
  using std::scalbnf;
  using std::scalbnl;

  using std::scalbln;
  using std::scalblnf;
  using std::scalblnl;

  using std::cbrt;
  using std::cbrtf;
  using std::cbrtl;

  using std::abs;

  using std::fabs;

  using std::hypot;
  using std::hypotf;
  using std::hypotl;
  using std::pow;
  using std::sqrt;

  using std::erf;
  using std::erff;
  using std::erfl;

  using std::erfc;
  using std::erfcf;
  using std::erfcl;

  using std::lgamma;
  using std::lgammaf;
  using std::lgammal;

  using std::tgamma;
  using std::tgammaf;
  using std::tgammal;

  using std::ceil;
  using std::floor;

  using std::nearbyint;
  using std::nearbyintf;
  using std::nearbyintl;

  using std::rint;
  using std::rintf;
  using std::rintl;

  using std::lrint;
  using std::lrintf;
  using std::lrintl;

  using std::llrint;
  using std::llrintf;
  using std::llrintl;

  using std::round;
  using std::roundf;
  using std::roundl;

  using std::lround;
  using std::lroundf;
  using std::lroundl;

  using std::llround;
  using std::llroundf;
  using std::llroundl;

  using std::trunc;
  using std::truncf;
  using std::truncl;

  using std::fmod;

  using std::remainder;
  using std::remainderf;
  using std::remainderl;

  using std::remquo;
  using std::remquof;
  using std::remquol;

  using std::copysign;
  using std::copysignf;
  using std::copysignl;

  using std::nan;
  using std::nanf;
  using std::nanl;

  using std::nextafter;
  using std::nextafterf;
  using std::nextafterl;

  using std::nexttoward;
  using std::nexttowardf;
  using std::nexttowardl;

  using std::fdim;
  using std::fdimf;
  using std::fdiml;

  using std::fmax;
  using std::fmaxf;
  using std::fmaxl;

  using std::fmin;
  using std::fminf;
  using std::fminl;

  using std::fma;
  using std::fmaf;
  using std::fmal;

  using std::fpclassify;
  using std::isfinite;
  using std::isinf;
  using std::isnan;
  using std::isnormal;
  using std::signbit;
  using std::isgreater;
  using std::isgreaterequal;
  using std::isless;
  using std::islessequal;
  using std::islessgreater;
  using std::isunordered;
}
