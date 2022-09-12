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

# Download BLAST database files
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5568457 ..."
wget https://files.plutof.ut.ee/public/orig/B3/99/B3990DEE1D9ADFF3CA4BF65FE5012C2C1F3AAEE3AC2268C341F7B4DF702572E0.gz
tar -xzvf B3990DEE1D9ADFF3CA4BF65FE5012C2C1F3AAEE3AC2268C341F7B4DF702572E0.gz
rm B3990DEE1D9ADFF3CA4BF65FE5012C2C1F3AAEE3AC2268C341F7B4DF702572E0.gz

# end here
echo "Done"
