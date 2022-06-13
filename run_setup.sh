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

# Download BLAST database files => upload new version of files
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5547681 ..."
wget https://files.plutof.ut.ee/public/orig/49/B3/49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz
tar -xzvf 49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz
rm 49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz

# end here
echo "Done"
