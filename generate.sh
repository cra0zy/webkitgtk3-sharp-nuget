#!/bin/sh

# make webkitgtk3-sharp
cd webkitgtk3-sharp
sh autogen.sh
make

# make nuget
cd ..
nuget pack webkitgtk3-sharp.nuspec
