
in_dataset=$1
SCORE=$2
BATS=$3
OUT_DATA=$4
ood_data="/data15/data15_5/Public/Datasets"
GPU=3
out_dataset="SUN"
# model_path="checkpoints/network/resnet18_cifar10.pth"
model_path="checkpoints/network"

CUDA_VISIBLE_DEVICES=${GPU} python test_BATS.py \
--model resnet18 \
--name KD_teacher_init \
--batch 64 \
--in_dataset ${in_dataset} \
--logdir result \
--score ${SCORE} \
--model_path ${model_path} \
--bats ${BATS}
# --out_dataset ${OUT_DATA} \