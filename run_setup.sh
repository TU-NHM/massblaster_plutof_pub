#!/bin/bash

# create input and output data directories for massBLASTer
echo "Creating input and output directories for massBLASTer ..."
mkdir -p indata
mkdir -p userdir
mkdir -p outdata

# Download massblaster.sif
echo "Downloading massBLASTer singularity container from https://app.plutof.ut.ee/filerepository/view/8142551 ..."
wget -O massblaster.sif https://s3.hpc.ut.ee/plutof-public/original/22aac079-bee2-44db-b283-aa91bfcb8771.sif

# rm old blast database file
echo "Removing old blast database files ..."
rm -fr massblaster_plutof_rel/

# Download BLAST database files
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/8142514 ..."
wget https://s3.hpc.ut.ee/plutof-public/original/780b17f2-e53a-4631-9adf-9964963bf1ff.gz
tar -xzvf 780b17f2-e53a-4631-9adf-9964963bf1ff.gz
rm 780b17f2-e53a-4631-9adf-9964963bf1ff.gz

# end here
echo "Done"
