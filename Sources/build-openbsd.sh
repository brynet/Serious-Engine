#!/bin/ksh

NCPU=`sysctl -n hw.ncpuonline`
let NCPU=$NCPU+2
echo "Will build with 'make -j$NCPU' ... please edit this script if incorrect."

set -e
set -x

rm -rf cmake-build
mkdir cmake-build
cd cmake-build

# This is the eventual path for amd64.
cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo ../Sources $1

echo "ECC first"
gmake ecc
echo "Then the rest..."
gmake -j$NCPU

