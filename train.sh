cd src
ENABLE_DEBUGPY=1 torchrun --nproc_per_node 1 -m open_clip_train.main \
    --train-data '/home/lin/datasets/coco_wb/train2017/train2017_{0000..0118}.tar' \
    --train-num-samples 118287 \
    --dataset-type webdataset \
    --batch-size 128 \
    --precision amp \
    --workers 4 \
    --log-every-n-steps 1
    #--imagenet-val /data/imagenet/validation/