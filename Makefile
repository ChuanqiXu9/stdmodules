# PATH to LIBCXX STL
STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

INTERFACE_OPTION=--precompile -fprebuilt-module-path=.
build: std.pcm libstd.a
	
std.pcm: std.cppm coroutine.cppm numeric.cppm iostream.cppm string.cppm
	clang++ -std=c++20 $(INTERFACE_OPTION) coroutine.cppm -o std-coroutine.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) numeric.cppm -o std-numeric.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) iostream.cppm -o std-iostream.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) string.cppm -o std-string.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) std.cppm -o std.pcm $(STL_PATH)

libstd.a:std.pcm
	clang++ -std=c++20 std-coroutine.pcm -c -o std-coroutine.o
	clang++ -std=c++20 std-numeric.pcm -c -o std-numeric.o
	clang++ -std=c++20 std-iostream.pcm -c -o std-iostream.o
	clang++ -std=c++20 std-string.pcm -c -o std-string.o
	clang++ -std=c++20 std.pcm -c -o std.o
	llvm-ar crv libstd.a std-coroutine.o std-numeric.o std-iostream.o std-string.o std.o

clean:
	rm -f *.o *.out *.a
	rm -f *.pcm
	cd test && make clean
