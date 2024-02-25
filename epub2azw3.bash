#!/usr/bin/bash

# Source the optparse.bash file
source optparse/optparse.bash
# Define options
optparse.define short=c long=calibre desc="Path to Calibre top-level document storage" variable=calibre
# Source the output file ----------------------------------------------------------
source $( optparse.build )

if [ "$calibre" == "" ]; then
    echo "ERROR: Please provide a path to a Calibre document storage"
    exit 1
fi
