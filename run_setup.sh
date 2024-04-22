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
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/6875053 ..."
wget https://s3.hpc.ut.ee/plutof-public/original/e5db879b-ceb7-4b3d-b8e4-4d34071489c6.gz
tar -xzvf e5db879b-ceb7-4b3d-b8e4-4d34071489c6.gz
rm e5db879b-ceb7-4b3d-b8e4-4d34071489c6.gz

# end here
echo "Done"
