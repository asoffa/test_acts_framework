#!/bin/bash

export FASER_BASE_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
echo "Environment variable FASER_BASE_DIR set to $FASER_BASE_DIR"

echo "Setting up default lxplus software configuration..."
source "${FASER_BASE_DIR}/acts-framework/CI/setup_lxplus6.sh"

echo "Setting acts-framework library path..."
export LD_LIBRARY_PATH="$FASER_BASE_DIR/acts-framework-run/lib64:$LD_LIBRARY_PATH"

echo "Setting cmake path..."
export PATH="$HOME/software/cmake-3.11.0-install/bin:$PATH"

echo "Done."

