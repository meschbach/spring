#!/bin/bash -xe

which cmake
cmake --version

cmake .
make install
