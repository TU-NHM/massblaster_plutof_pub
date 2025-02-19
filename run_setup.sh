#!/bin/bash

# create input and output data directories for massBLASTer
echo "Creating input and output directories for massBLASTer ..."
mkdir -p indata
mkdir -p userdir
mkdir -p outdata

# Download massblaster.sif
echo "Downloading massBLASTer singularity container from https://app.plutof.ut.ee/filerepository/view/6869191 ..."
wget -O massblaster.sif https://s3.hpc.ut.ee/plutof-public/original/94f86639-1d7f-4836-83e3-0c66c7e44132.sif

# rm old blast database file
echo "Removing old blast database files ..."
rm -fr massblaster_plutof_rel/

# Download BLAST database files
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/7411916 ..."
wget https://s3.hpc.ut.ee/plutof-public/original/2fc1eecc-66e1-4ccb-82ad-89084291d22a.gz
tar -xzvf 2fc1eecc-66e1-4ccb-82ad-89084291d22a.gz
rm 2fc1eecc-66e1-4ccb-82ad-89084291d22a.gz

# end here
echo "Done"
