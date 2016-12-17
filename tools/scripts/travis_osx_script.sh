#!/bin/bash -xe

which cmake
cmake --version

cmake . || (
	e=$?
	echo "===== CMakeOutput.log ===="
	cat ./CMakeFiles/CMakeOutput.log
	echo "===== CMakeError.log ===="
	cat ./CMakeFiles/CMakeError.log
	exit $e
)
make install
