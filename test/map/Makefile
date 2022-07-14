STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

build: map.cpp
	clang++ -std=c++20 -fprebuilt-module-path=../.. map.cpp -o map.out -lc++ -L../.. -lstd

clean:
	rm -f *.out *.o *.pcm
