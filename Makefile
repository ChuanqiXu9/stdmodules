# PATH to LIBCXX STL
STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

INTERFACE_OPTION=--precompile -fprebuilt-module-path=.
build: std.cppm
	clang++ -std=c++20 $(INTERFACE_OPTION) coroutine.cppm -o std-coroutine.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) numeric.cppm -o std-numeric.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) iostream.cppm -o std-iostream.pcm $(STL_PATH)
	clang++ -std=c++20 $(INTERFACE_OPTION) std.cppm -o std.pcm $(STL_PATH)
	cd test && make

clean:
	rm -f *.o *.out
	rm -f *.pcm
	cd test && make clean
