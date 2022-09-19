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
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5570035 ..."
wget https://files.plutof.ut.ee/public/orig/97/84/9784BD16440D2D9C4E50CC5A16AB3DD3A007CECE205E82A151A02324F6DC965C.gz
tar -xzvf 9784BD16440D2D9C4E50CC5A16AB3DD3A007CECE205E82A151A02324F6DC965C.gz
rm 9784BD16440D2D9C4E50CC5A16AB3DD3A007CECE205E82A151A02324F6DC965C.gz

# end here
echo "Done"
