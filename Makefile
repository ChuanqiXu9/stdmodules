# PATH to LIBCXX STL
STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++
INTERFACE_OPTION=--precompile -fprebuilt-module-path=.
build: std.pcm libstd.a

std.pcm: std.cppm coroutine.cppm numeric.cppm iostream.cppm string.cppm vector.cppm thread.cppm chrono.cppm \
map.cppm mutex.cppm atomic.cppm random.cppm cstdio.cppm fstream.cppm memory.cppm stdexcept.cppm utility.cppm \
array.cppm algorithm.cppm functional.cppm type_traits.cppm cstdint.cppm exception.cppm iterator.cppm list.cppm \
condition_variable.cppm queue.cppm cstdlib.cppm
	clang++ -std=c++20 $(INTERFACE_OPTION) coroutine.cppm -o std-coroutine.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) numeric.cppm -o std-numeric.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) iostream.cppm -o std-iostream.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) string.cppm -o std-string.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) vector.cppm -o std-vector.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) thread.cppm -o std-thread.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) chrono.cppm -o std-chrono.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) map.cppm -o std-map.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) mutex.cppm -o std-mutex.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) atomic.cppm -o std-atomic.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) random.cppm -o std-random.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) cstdio.cppm -o std-cstdio.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) fstream.cppm -o std-fstream.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) memory.cppm -o std-memory.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) stdexcept.cppm -o std-stdexcept.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) utility.cppm -o std-utility.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) array.cppm -o std-array.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) algorithm.cppm -o std-algorithm.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) functional.cppm -o std-functional.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) type_traits.cppm -o std-type_traits.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) cstdint.cppm -o std-cstdint.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) exception.cppm -o std-exception.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) iterator.cppm -o std-iterator.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) list.cppm -o std-list.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) condition_variable.cppm -o std-condition_variable.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) queue.cppm -o std-queue.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) cstdlib.cppm -o std-cstdlib.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) std.cppm -o std.pcm $(STL_PATH)

libstd.a:std.pcm
	clang++ -std=c++20 std-coroutine.pcm -c -o std-coroutine.o
	clang++ -std=c++20 std-numeric.pcm -c -o std-numeric.o
	clang++ -std=c++20 std-iostream.pcm -c -o std-iostream.o
	clang++ -std=c++20 std-string.pcm -c -o std-string.o
	clang++ -std=c++20 std-vector.pcm -c -o std-vector.o
	clang++ -std=c++20 std-thread.pcm -c -o std-thread.o
	clang++ -std=c++20 std-chrono.pcm -c -o std-chrono.o
	clang++ -std=c++20 std-map.pcm -c -o std-map.o
	clang++ -std=c++20 std-mutex.pcm -c -o std-mutex.o
	clang++ -std=c++20 std-atomic.pcm -c -o std-atomic.o
	clang++ -std=c++20 std-random.pcm -c -o std-random.o
	clang++ -std=c++20 std-cstdio.pcm -c -o std-cstdio.o
	clang++ -std=c++20 std-fstream.pcm -c -o std-fstream.o
	clang++ -std=c++20 std-memory.pcm -c -o std-memory.o
	clang++ -std=c++20 std-stdexcept.pcm -c -o std-stdexcept.o
	clang++ -std=c++20 std-utility.pcm -c -o std-utility.o
	clang++ -std=c++20 std-algorithm.pcm -c -o std-algorithm.o
	clang++ -std=c++20 std-array.pcm -c -o std-array.o
	clang++ -std=c++20 std-functional.pcm -c -o std-functional.o
	clang++ -std=c++20 std-type_traits.pcm -c -o std-type_traits.o
	clang++ -std=c++20 std-cstdint.pcm -c -o std-cstdint.o
	clang++ -std=c++20 std-exception.pcm -c -o std-exception.o
	clang++ -std=c++20 std-iterator.pcm -c -o std-iterator.o
	clang++ -std=c++20 std-list.pcm -c -o std-list.o
	clang++ -std=c++20 std-condition_variable.pcm -c -o std-condition_variable.o
	clang++ -std=c++20 std-queue.pcm -c -o std-queue.o
	clang++ -std=c++20 std-cstdlib.pcm -c -o std-cstdlib.o
	clang++ -std=c++20 std.pcm -c -o std.o
	llvm-ar crv libstd.a std-coroutine.o std-numeric.o std-iostream.o std-string.o std-vector.o \
std-thread.o std-chrono.o std-map.o std-mutex.o std-atomic.o std-random.o std-cstdio.o std-fstream.o \
std-memory.o std-stdexcept.o std-utility.o std-algorithm.o std-array.o std-functional.o std-type_traits.o \
std-cstdint.o std-exception.o std-iterator.o std-list.o std-condition_variable.o std-queue.o std-cstdlib.o \
std.o 

clean:
	rm -f *.o *.out *.a
	rm -f *.pcm
	cd examples && make clean
