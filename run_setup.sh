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
echo "Downloading blast database files from https://app.plutof.ut.ee/filerepository/view/6545813 ..."
wget https://files.plutof.ut.ee/public/public/orig/71/A4/71A427007B85C2BE574481AC875EAFE157BA665DA9489AE2228C40D48AEA90D8.gz
tar -xzvf 71A427007B85C2BE574481AC875EAFE157BA665DA9489AE2228C40D48AEA90D8.gz
rm 71A427007B85C2BE574481AC875EAFE157BA665DA9489AE2228C40D48AEA90D8.gz

# end here
echo "Done"
