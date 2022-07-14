# PATH to LIBCXX STL
STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++
INTERFACE_OPTION=--precompile -fprebuilt-module-path=.
build: std.pcm libstd.a

std.pcm: std.cppm coroutine.cppm numeric.cppm iostream.cppm string.cppm vector.cppm thread.cppm chrono.cppm\
map.cppm mutex.cppm
	clang++ -std=c++20 $(INTERFACE_OPTION) coroutine.cppm -o std-coroutine.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) numeric.cppm -o std-numeric.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) iostream.cppm -o std-iostream.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) string.cppm -o std-string.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) vector.cppm -o std-vector.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) thread.cppm -o std-thread.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) chrono.cppm -o std-chrono.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) map.cppm -o std-map.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) mutex.cppm -o std-mutex.pcm $(STL_PATH)
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
	clang++ -std=c++20 std.pcm -c -o std.o
	llvm-ar crv libstd.a std-coroutine.o std-numeric.o std-iostream.o std-string.o std-vector.o \
std-thread.o std-chrono.o std-map.o std-mutex.o std.o

clean:
	rm -f *.o *.out *.a
	rm -f *.pcm
	cd test && make clean
