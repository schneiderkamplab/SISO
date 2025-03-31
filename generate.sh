#!/bin/bash
TYPE=$1
DIR=$2
MODEL=$3
PROMPT=$4
IMAGE=$5
shift 5
WEIGHTS="$DIR/$TYPE"
python inference_prompt_simplification.py \
  --model_name $MODEL \
  --lora_weights_path $WEIGHTS/pytorch_lora_weights.safetensors \
  --num_inference_steps 4 \
  --prompt "$PROMPT" \
  --guidance_scale 0.0 \
  --output_path "$IMAGE" \
  --seed 42 \
  $@
