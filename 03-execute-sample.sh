#!/usr/bin/env bash
INSTANCE_NAME=$1

export PATH="/home/wing/miniconda2/bin:$PATH"
source activate ml
python --version
pip list --format=columns

cd ~/jenkins/$INSTANCE_NAME
python sample.py --save_dir ./save/$INSTANCE_NAME

cd 
