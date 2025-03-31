#!/bin/bash
./finetune.sh flux data/dog black-forest-labs/FLUX.1-schnell "a photo of a dog" example_images/dog_subject.png --mixed_precision bf16 $@
