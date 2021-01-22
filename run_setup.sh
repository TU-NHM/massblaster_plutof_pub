#!/bin/bash

# create input and output data directories for massBLASTer
echo "\nCreating input and output directories for massBLASTer ...\n"
mkdir indata
mkdir userdir
mkdir outdata

# Download massblaster.sif
echo "\nDownloading massBLASTer singularity container from https://plutof.ut.ee/#/filerepository/view/3575480 ...\n"
wget https://files.plutof.ut.ee/public/orig/D5/F9/D5F91940D6C048FAAFD6A9B078519C0C80263F9C21CA4A084950BDE0086F017D
mv D5F91940D6C048FAAFD6A9B078519C0C80263F9C21CA4A084950BDE0086F017D massblaster.sif

# Download BLAST database files
echo "\nDownloading blast database files from https://plutof.ut.ee/#/filerepository/view/3575303 ...\n"
wget https://files.plutof.ut.ee/public/orig/AA/C7/AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz
tar -xzvf AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz
rm AAC732C056CA14965CFB9692A9AE8605AC8E2206D1661FD24FC5FE57B508E00A.gz

# end here
echo "\nDone\n"