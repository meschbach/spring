#!/bin/bash -xe

which cmake
cmake --version

make -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DAPPLE=1 -DCMAKE_OSX_ARCHITECTURES=x86_64 -DCMAKE_SYSTEM_PROCESSOR=x86_64 .|| (
	e=$?
	echo "===== CMakeOutput.log ===="
	cat ./CMakeFiles/CMakeOutput.log
	echo "===== CMakeError.log ===="
	cat ./CMakeFiles/CMakeError.log
	exit $e
)
make install
