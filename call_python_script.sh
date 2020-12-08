#!/bin/bash


source /usr/local/apps/psycapps/config/conda_bash_update

# The python scripts folder is taken as an input
script_folder=$1
script_file=$2

cd $script_folder

python $script_file
