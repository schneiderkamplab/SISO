#!/bin/bash
./finetune.sh sdxl data/dog stabilityai/sdxl-turbo "a photo of a dog" example_images/dog_subject.png --train_text_encode $@
