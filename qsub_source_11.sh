#!/bin/bash

#SBATCH --time=02:00:00
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=16GB
#SBATCH -J massBLASTer plutof

module load singularity/3.4.0

# get working directory
home_dir=$HOME

cd "$home_dir/massblaster_plutof/"

./massblaster.sif /run_massblaster.sh 11 -task megablast -num_threads 4 -dust no -db /massblaster_plutof_rel/data/plutof_fungi -query "$home_dir/test_massblaster_singularity/indata/sourc
e_11" -outfmt 15 -reward 1 -gapextend 2 -max_target_seqs 1 -penalty -2 -word_size 28 -gapopen 0
