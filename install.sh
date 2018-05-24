#!/bin/bash

echo "Cloning and configuring acts-framework..."
startDir=$PWD
git clone --recursive https://gitlab.cern.ch/acts/acts-framework.git
cd acts-framework
git checkout FASER
cd external/acts-core && git checkout bc9a2ff
cp -f /home/atlas/software/acts-core-surfaces-patch/SurfaceArray.hpp Core/include/ACTS/Surfaces/
cd ../acts-fatras && git checkout 7810c0b
cd $startDir

echo "Done."

