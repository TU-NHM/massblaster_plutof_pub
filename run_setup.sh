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
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5573814 ..."
wget https://files.plutof.ut.ee/public/orig/6D/5C/6D5C9BA8B2C8763DDDB09AF6559183A6FB155A371BC02ED0B4C111E129713912.gz
tar -xzvf 6D5C9BA8B2C8763DDDB09AF6559183A6FB155A371BC02ED0B4C111E129713912.gz
rm 6D5C9BA8B2C8763DDDB09AF6559183A6FB155A371BC02ED0B4C111E129713912.gz

# end here
echo "Done"
