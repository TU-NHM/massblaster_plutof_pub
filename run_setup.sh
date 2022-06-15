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
echo "Downloading blast database files from https://plutof.ut.ee/#/filerepository/view/5547681 ..."
wget https://files.plutof.ut.ee/public/orig/49/B3/49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz
tar -xzvf 49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz
rm 49B3874BD2190F90555E1182E850946DE574B39BEC40EE28B0F13E7D32BB8CC7.gz

# end here
echo "Done"
