export CUDA_VISIBLE_DEVICES=1


python -u run.py \
  --is-training 1 \
  --root-path ./dataset/ETT-small/ \
  --data-path ETTm1.csv \
  --model-id ETTm1_96_24 \
  --model Autoformer \
  --data ETTm1 \
  --features M \
  --seq-len 96 \
  --label-len 48 \
  --pred-len 24 \
  --e-layers 2 \
  --d-layers 1 \
  --factor 3 \
  --enc-in 7 \
  --dec-in 7 \
  --c-out 7 \
  --des 'Exp' \
  --freq 't' \
  --itr 1

python -u run.py \
  --is-training 1 \
  --root-path ./dataset/ETT-small/ \
  --data-path ETTm1.csv \
  --model-id ETTm1_96_48 \
  --model Autoformer \
  --data ETTm1 \
  --features M \
  --seq-len 96 \
  --label-len 48 \
  --pred-len 48 \
  --e-layers 2 \
  --d-layers 1 \
  --factor 3 \
  --enc-in 7 \
  --dec-in 7 \
  --c-out 7 \
  --des 'Exp' \
  --freq 't' \
  --itr 1

python -u run.py \
  --is-training 1 \
  --root-path ./dataset/ETT-small/ \
  --data-path ETTm1.csv \
  --model-id ETTm1_96_96 \
  --model Autoformer \
  --data ETTm1 \
  --features M \
  --seq-len 96 \
  --label-len 48 \
  --pred-len 96 \
  --e-layers 2 \
  --d-layers 1 \
  --factor 3 \
  --enc-in 7 \
  --dec-in 7 \
  --c-out 7 \
  --des 'Exp' \
  --freq 't' \
  --itr 1

python -u run.py \
  --is-training 1 \
  --root-path ./dataset/ETT-small/ \
  --data-path ETTm1.csv \
  --model-id ETTm1_96_288 \
  --model Autoformer \
  --data ETTm1 \
  --features M \
  --seq-len 96 \
  --label-len 48 \
  --pred-len 288 \
  --e-layers 2 \
  --d-layers 1 \
  --factor 3 \
  --enc-in 7 \
  --dec-in 7 \
  --c-out 7 \
  --des 'Exp' \
  --freq 't' \
  --itr 1

python -u run.py \
  --is-training 1 \
  --root-path ./dataset/ETT-small/ \
  --data-path ETTm1.csv \
  --model-id ETTm1_96_672 \
  --model Autoformer \
  --data ETTm1 \
  --features M \
  --seq-len 96 \
  --label-len 48 \
  --pred-len 672 \
  --e-layers 2 \
  --d-layers 1 \
  --factor 3 \
  --enc-in 7 \
  --dec-in 7 \
  --c-out 7 \
  --des 'Exp' \
  --freq 't' \
  --itr 1
