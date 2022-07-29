This is a toy example to explore possible methods to implement std modules.

It requries clang compiler and libcxx in 15.x branch.

Tested with libstdc++ 10.3.

Most of the examples are extracted from cppreference.

#### How to run with libstdc++

```
# Set clang15.x as the default clang compiler
# Set STL_PATH in Makefile to the desired path
make && cd examples && make
# Remove all the `-lc++` in exmaples/*/Makefiles
Run the examples you want
```

#### How to run with libc++

```
# Set clang15.x as the default clang compiler
# Set the path to libc++ in Makefile
make && cd examples && make
Run the examples you want
```

#### Known Problems

##### User Defined Deduction Guide 

Currently, Clang doesn't take care of User Defined Deduction Guide in C++20 Modules. So now we need to write:

```C++
std::lock_guard<std::mutex> lk(mutex);
```

instead of

```C++
std::lock_guard lk(mutex);
```

##### Non Inline constexpr variables

See functional.cppm for example. The standard forbids us to export using const things unless they are inlined.
The libcxx implements them as non-inline constexpr variables. So we make another trick to rename these
constexpr variables.
