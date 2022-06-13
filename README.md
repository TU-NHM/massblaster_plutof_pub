# massblaster_plutof
EOSC-Nordic service preparations (massBLASTer)

massBLASTer - a megablast utility for batch BLAST analysis of multiple query sequences against custom ribosomal ITS sequence datasets provided by the [UNITE Community](https://unite.ut.ee).

## Setup

### Pre-requisites

* OPTIONAL: [Singularity](https://sylabs.io/singularity/) - install Singularity (needed to create new singularity container)

### Setup steps

1. OPTIONAL: Create Singularity Image File (SIF)
    ```console
    sudo singularity build massblaster.sif massblaster_plutof.def
    ```

2. OPTIONAL: Copy SIF to HPC
    ```console
    scp massblaster.sif example_hpc_user@example.com:
    ```

3. Run setup bash script (downloads singularity container, BLAST database files and creates input and output data directories)
    ```console
    ./run_setup.sh
    ```

## Running the analysis (OPTIONAL: This could be done through sbatch slurm scripts)

**NB! The script expects input files in FASTA format, named as source_[run_id] and placed in indata/ directory.**

4. Run the pipeline using SIF (example data with run_id=11)
    ```console
    ./massblaster.sif /run_massblaster.sh 11 -num_threads 4 -dust no -db "/massblaster_plutof_rel/data/plutof_fungi_its" -outfmt 15 -reward 1 -gapextend 2 -max_target_seqs 1 -penalty -2 -word_size 28 -gapopen 0
    ```

## List of BLAST database aliases -
* plutof_fungi_its: "[UNITE](https://unite.ut.ee) (only fungi); rDNA ITS"
* plutof_nf_its: "[UNITE](https://unite.ut.ee) (non-fungi) / Other_euk_1; rDNA ITS"
* insd_its: "INSD (only fungi); rDNA ITS"
* insd_nf_its: "INSD (non-fungi); rDNA ITS / Other_euk_2"
* envir_plutof_its: "[UNITE](https://unite.ut.ee) environmental (all eukaryotes) / Envir; rDNA ITS"
* plutof_tri12: "[ToxGen](https://github.com/tomaszkulik/ToxGen); Tri12"
* plutof1: "UNITE+INSD"
* plutof2: "UNITE+Envir"
* plutof3: "UNITE+Other_euk"
* plutof4: "INSD+Envir"
* plutof5: "INSD+Other_euk"
* plutof6: "Envir+Other_euk"
* plutof7: "UNITE+INSD+Envir"
* plutof8: "UNITE+INSD+Other_euk"
* plutof9: "INSD+Envir+Other_euk"
* plutof10: "UNITE+Envir+Other_euk"
* plutof11: "UNITE+INSD+Envir+Other_euk"
