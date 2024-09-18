#!/bin/bash
echo "Running build.sh"

rustc --codegen opt-level=3 -o code_rs code.rs

gcc -O3 code.c -o code_gcc

clang -O3 code.c -o code_clang

# Uncomment to also build the container image
# docker build -t giuliohome/cpubound:benchmark .