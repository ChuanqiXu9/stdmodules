STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

build: mutex.cpp
	clang++ -std=c++20 -fprebuilt-module-path=../.. mutex.cpp -c -o mutex.o 
	clang++ -std=c++20 mutex.o -o mutex.out -lc++ -L../.. -lstd -pthread

clean:
	rm -f *.out *.o *.pcm
