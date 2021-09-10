#!/bin/bash

# create input and output data directories for massBLASTer
echo "Creating input and output directories for massBLASTer ..."
mkdir -p indata
mkdir -p userdir
mkdir -p outdata

# Download massblaster.sif
echo "Downloading massBLASTer singularity container from https://plutof.ut.ee/#/filerepository/view/3576496 ..."
wget https://files.plutof.ut.ee/public/orig/D5/F9/D5F91940D6C048FAAFD6A9B078519C0C80263F9C21CA4A084950BDE0086F017D
mv D5F91940D6C048FAAFD6A9B078519C0C80263F9C21CA4A084950BDE0086F017D massblaster.sif

# rm old blast database file
echo "Removing old blast database files ..."
rm -fr massblaster_plutof_rel/

# Download BLAST database files
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/4050006 ..."
wget https://files.plutof.ut.ee/public/orig/AA/C7/AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz
tar -xzvf AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz
rm AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz

# end here
echo "Done"
