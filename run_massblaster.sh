#!/bin/bash

# running the script - ./run_massblaster.sh <run_id>

if [ -z "$1" ]
    then
        echo "No run_id argument supplied!"
        exit
fi

# get run id
run_id=$1

# get working directory
pwd=$(pwd)

# parse command line arguments (example: -num_threads 4 -dust no -db data/plutof_fungi -query ../infiles/source_5131 -outfmt 15
#  -reward 1 -gapextend 2 -max_target_seqs 1 -penalty -2 -word_size 28 -gapopen 0)
options=$@
arguments=($options)
index=0
mb_args="-task megablast"
for argument in $options
  do
    index=$((index + 1))
    case $argument in
      -num_threads) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -dust)  mb_args="$mb_args $argument ${arguments[index]}" ;;
      -db) mb_args="$mb_args $argument $pwd${arguments[index]}" ;;
      -outfmt) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -reward) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -gapextend) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -max_target_seqs) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -penalty) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -word_size) mb_args="$mb_args $argument ${arguments[index]}" ;;
      -gapopen) mb_args="$mb_args $argument ${arguments[index]}" ;;
    esac
  done

user_dir="$pwd/userdir/$run_id"
outdata_dir="$pwd/outdata"
infile="source_$run_id"
outfile=$infile".txt"

echo "Start"

echo "Starting new analysis in $user_dir"
echo "massBLASTer program parameters: $mb_args"

# rm (if exists) user working dir and create as new
if [ -d "$user_dir" ]
  then
      rm -fr "$user_dir"
fi
mkdir "$user_dir"

# copy indata to user's workdir
cp "$pwd/indata/$infile" "$user_dir"

# run massBLASTer
cd "$user_dir"
blastn $mb_args -query "$user_dir/$infile" -out "$outfile"

# move to outfile_dir dir
mv "$outfile" "$outdata_dir/"

echo "End"
