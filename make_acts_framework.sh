#!/bin/bash

cd $FASER_BASE_DIR
echo "Now working in ${FASER_BASE_DIR}..."

buildDir="${FASER_BASE_DIR}/acts-framework-build"
runDir="${FASER_BASE_DIR}/acts-framework-run"

mkdir -p $buildDir $runDir 
cd $buildDir
echo "Now working in $buildDir"

# With all possible options:
#cmake -DCMAKE_INSTALL_PREFIX="$runDir" -DUSE_DD4HEP=on -DUSE_GEANT4=on -DUSE_OPENMP=on -DUSE_PYTHIA8=on $FASER_BASE_DIR/acts-framework

cmake -DCMAKE_INSTALL_PREFIX="$runDir" $FASER_BASE_DIR/acts-framework
make && make install

cp $FASER_BASE_DIR/acts-framework/Examples/GeometryBuilding/src/config $runDir
cd $runDir

echo "Done."

