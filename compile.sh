#!/bin/bash  -x

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)


cd $SCRIPTPATH
BUILDPATH="$SCRIPTPATH/build"
[ ! -d $BUILDPATH ] && mkdir $BUILDPATH
cd $BUILDPATH

CC=$(which gcc)
CXX=$(which g++)

CMAKE_PARAMS="-DCMAKE_C_COMPILER=$CC -DCMAKE_CXX_COMPILER=$CXX"
cmake $CMAKE_PARAMS ..
make
