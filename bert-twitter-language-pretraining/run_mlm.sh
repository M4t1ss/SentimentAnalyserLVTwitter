#!/bin/bash

# Path that contains model.bin and config.json
MODELPATH=

# Path for saving checkpoints
SAVEPATH=

# Training and evaluation files
TRAIN=
EVAL=

python run_mlm.py \
	--model_name_or_path $MODELPATH \
	--train_file $TRAIN \
	--validation_file $EVAL \
	--do_train \
	--do_eval \
    --num_train_epochs 20 \
    --learning_rate 1e-4 \
    --save_steps 2000 \
    --logging_steps 2000 \
    --eval_steps 2000 \
    --save_total_limit 5 \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 8 \
    --evaluation_strategy steps \
	--output_dir $SAVEPATH \
	--overwrite_output_dir \
	--max_seq_length 512