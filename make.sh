#!/bin/bash
#
# sudo apt install u-boot-tools tree
#

export TOOLCHAIN=$(pwd)/toolchain/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu
export PATH=${TOOLCHAIN}/bin:$PATH
aarch64-linux-gnu-gcc -v

make all
tree -hn output
