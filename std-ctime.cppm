module;
#include <ctime>
export module std:ctime;

export namespace std {
  using std::clock_t;
  using std::time_t;
  using std::timespec;
  using std::tm;
  using std::clock;
  using std::difftime;
  using std::mktime;
  using std::time;
  using std::timespec_get;
  using std::asctime;
  using std::ctime;
  using std::gmtime;
  using std::localtime;
  using std::strftime;
}
