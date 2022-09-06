#!/bin/bash

# create input and output data directories for massBLASTer
echo "Creating input and output directories for massBLASTer ..."
mkdir -p indata
mkdir -p userdir
mkdir -p outdata

# Download massblaster.sif
echo "Downloading massBLASTer singularity container from https://plutof.ut.ee/#/filerepository/view/5551008 ..."
wget -O massblaster.sif https://files.plutof.ut.ee/public/orig/6E/DF/6EDF95C51D6111E92D666890F1DC79508B5601C06618904F991593C14BB3C279

# rm old blast database file
echo "Removing old blast database files ..."
rm -fr massblaster_plutof_rel/

# Download BLAST database files => upload new version of files
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5567814 ..."
wget https://files.plutof.ut.ee/public/orig/56/66/5666505A1AF8A98DDD9B7385C664FCCF76F6FCC4258DF777F15BCF8B7B878565.gz
tar -xzvf 5666505A1AF8A98DDD9B7385C664FCCF76F6FCC4258DF777F15BCF8B7B878565.gz
rm 5666505A1AF8A98DDD9B7385C664FCCF76F6FCC4258DF777F15BCF8B7B878565.gz

# end here
echo "Done"
