STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

build: Generator.cpp
	clang++ -std=c++20 -fprebuilt-module-path=../.. Generator.cpp -o Generator.out -lc++

clean:
	rm -f *.out *.o *.pcm
