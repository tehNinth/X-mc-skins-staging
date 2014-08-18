#!/bin/bash

PWD=$(pwd)
BINDIR=$(dirname "$(readlink -fn "$0")")
cd $BINDIR

# Zip the assets and pack.meta into the pack...
# Exclude any git build files though

mkdir ./build
name="Xpack-build.zip"
rm "./build/$name"

# zop while storing symbolic links and recursive dirs
zip -y -r "./build/$name" "assets" "pack.mcmeta"

cd "$PWD"
