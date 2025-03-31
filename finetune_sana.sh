#!/bin/bash
./finetune.sh sana data/dog Efficient-Large-Model/Sana_1600M_512px_diffusers "a photo of a dog" example_images/dog_subject.png --num_grad_steps 3 $@
