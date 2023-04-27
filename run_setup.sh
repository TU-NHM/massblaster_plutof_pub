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
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/6273435 ..."
wget https://files.plutof.ut.ee/public/orig/BC/7D/BC7D386C6A88C52B53C979E24F951D08261FF0C13317DE6BF812827CF306BEF8.gz
tar -xzvf BC7D386C6A88C52B53C979E24F951D08261FF0C13317DE6BF812827CF306BEF8.gz
rm BC7D386C6A88C52B53C979E24F951D08261FF0C13317DE6BF812827CF306BEF8.gz

# end here
echo "Done"
