#!/usr/bin/env bash
INSTANCE_NAME=$1

export PATH="/home/wing/miniconda2/bin:$PATH"
source activate ml
python --version
pip list --format=columns

cd ~/jenkins/$INSTANCE_NAME
python train.py --data_dir ./data/$INSTANCE_NAME --save_dir ./save/$INSTANCE_NAME --log_dir ./log/$INSTANCE_NAME

cd 
