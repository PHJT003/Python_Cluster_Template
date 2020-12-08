#!/bin/bash
# Script to call the job scheduler on the cluster

# The scripts folder is taken as an input
script_folder=$1
script_file=$2

# Create log folder for output and error files
# Make sure to change this according to your account and that this folder exists

OUTPUT_LOG_DIR=~/log
mkdir -p $OUTPUT_LOG_DIR
echo "created log folders successfully"
cd $(pwd)

qsub    -l h_rss=4G \
        -o ${OUTPUT_LOG_DIR}/Python_Output_${script_file}.out \
        -e ${OUTPUT_LOG_DIR}/Python_Error_${script_file}.err \
        call_python_script.sh $script_folder $script_file;
