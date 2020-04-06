#!/usr/bin/env bash


CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python ./scripts/action-recognition/train_recognizer.py \
    --dataset kinetics400 \
    --data-dir /home/ubuntu/data/kinetics400/train_256 \
    --val-data-dir /home/ubuntu/data/kinetics400/val_256 \
    --train-list /home/ubuntu/data/kinetics400/k400_train_240618.txt \
    --val-list /home/ubuntu/data/kinetics400/k400_val_19761_cleanv3.txt \
    --dtype float32 \
    --mode hybrid \
    --prefetch-ratio 1.0 \
    --model i3d_nl10_resnet50_v1_kinetics400 \
    --video-loader \
    --use-decord \
    --num-classes 400 \
    --batch-size 8 \
    --num-gpus 8 \
    --num-data-workers 32 \
    --input-size 224 \
    --new-height 256 \
    --new-width 340 \
    --new-length 32 \
    --new-step 2 \
    --lr-mode step \
    --lr-decay 0.1 \
    --lr-decay-epoch 40,80,100 \
    --lr 0.01 \
    --momentum 0.9 \
    --wd 0.0001 \
    --num-epochs 100 \
    --scale-ratios 1.0,0.8 \
    --save-frequency 20 \
    --log-interval 50 \
    --logging-file i3d_nl10_resnet50_v1_kinetics400.log
