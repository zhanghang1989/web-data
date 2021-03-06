python train_imagenet.py \
  --rec-train /media/ramdisk/rec/train.rec --rec-train-idx /media/ramdisk/rec/train.idx \
  --rec-val /media/ramdisk/rec/val.rec --rec-val-idx /media/ramdisk/rec/val.idx \
  --model resnet50_v1b --mode hybrid \
  --lr 0.4 --lr-mode cosine --num-epochs 120 --batch-size 128 --num-gpus 8 -j 60 \
  --warmup-epochs 5 --dtype float32 \
  --use-rec --last-gamma --no-wd --label-smoothing  --use-gn \
  --save-dir params_resnet50_v1b_gn_best \
  --logging-file resnet50_v1b_gn_best.log
