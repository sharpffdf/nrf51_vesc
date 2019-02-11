#!/bin/bash
MAIN_PATH="`pwd`/"

GIT_VERSION=`$MAIN_PATH/gitVersion.sh`

if [ "$1" != "clean" ]; then
    mkdir bin
fi
pushd $MAIN_PATH/bin > /dev/null 2>&1
cmake ../ -Dgitver=\\\"${GIT_VERSION}\\\"
make -j8 $*
popd > /dev/null 2>&1
if [ "$1" = "clean" ]; then
    rm bin -r
fi
