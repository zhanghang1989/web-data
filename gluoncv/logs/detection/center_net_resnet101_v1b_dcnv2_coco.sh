python3 ~/gluon-cv/scripts/detection/center_net/train_center_net.py --gpus 0,1,2,3,4,5,6,7 -j 60 --dataset coco  --batch-size 96 --log-interval 10 --epochs 140 --lr-decay-epoch 90,120  --lr 3.75e-4 --wd 0.00001 --momentum 0.9 --wh-weight 0.1 --warmup-epochs 0 --val-interval 100 --network resnet101_v1b_dcnv2
