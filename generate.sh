#!/bin/sh

# update submodules
git submodule init
git submodule update

# make webkitgtk3-sharp
cd webkitgtk3-sharp
sh autogen.sh
make

# make nuget
cd ..
nuget pack webkitgtk3-sharp.nuspec
