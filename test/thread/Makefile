STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

build: thread.cpp
	clang++ -std=c++20 -fprebuilt-module-path=../.. thread.cpp -c -o thread.o
	clang++ -std=c++20 thread.o -o thread.out -lc++ -L../.. -lstd -pthread

clean:
	rm -f *.out *.o *.pcm
