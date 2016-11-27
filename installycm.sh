#!/usr/bin/env bash

# Exit if there are any errors.
set -e

# Create the build directory
cd $HOME
mkdir -p ycm_build
cd ycm_build

# Use the system libclang.
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core --config Release
