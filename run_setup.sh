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
echo "Downloading blast database files from https://api.plutof.ut.ee/v1/filerepository/filemeta/?file=5582767 ..."
wget https://files.plutof.ut.ee/public/orig/6D/1C/6D1CE5BE687C2449151EAE4FC602AF1E41214148CEE183F17D1261588B8D6843.gz
tar -xzvf 6D1CE5BE687C2449151EAE4FC602AF1E41214148CEE183F17D1261588B8D6843.gz
rm 6D1CE5BE687C2449151EAE4FC602AF1E41214148CEE183F17D1261588B8D6843.gz

# end here
echo "Done"
