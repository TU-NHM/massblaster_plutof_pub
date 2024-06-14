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
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/6908093 ..."
wget https://s3.hpc.ut.ee/plutof-public/original/6da1f051-9606-447c-a9d0-8cef05136c94.gz
tar -xzvf 6da1f051-9606-447c-a9d0-8cef05136c94.gz
rm 6da1f051-9606-447c-a9d0-8cef05136c94.gz

# end here
echo "Done"
