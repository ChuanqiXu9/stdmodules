STL_PATH=-isystem ../build_libcxx/include/c++/v1 -I../build_libcxx/include/x86_64-unknown-linux-gnu/c++/v1 -nostdinc++

build: string.cpp
	clang++ -std=c++20 -fprebuilt-module-path=../.. string.cpp -o string.out -lc++ -L../.. -lstd

clean:
	rm -f *.out *.o *.pcm
