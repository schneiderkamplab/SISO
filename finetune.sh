#!/bin/bash
TYPE=$1
DIR=$2
MODEL=$3
PROMPT=$4
IMAGE=$5
shift 5
WEIGHTS="$DIR/$TYPE"
python siso_generation_${TYPE}.py \
  --subject_image_path "$IMAGE" \
  --prompt "$PROMPT" \
  --train_text_encode \
  --output_dir $DIR \
  --lr_warmup_steps 0 \
  --lr_scheduler constant \
  --train_batch_size 1 \
  --resolution 512 \
  --pretrained_model_name_or_path $MODEL \
  --num_train_epochs 50 \
  --early_stopping_threshold_percentage 3 \
  --early_stopping_max_count 7 \
  --num_inference_steps 1 \
  --learning_rate 2e-4 \
  --seed=42 \
  --save_weights \
  --weights_output_dir $WEIGHTS \
  --ir_features_path "data/ir_features.pth" \
  $@
