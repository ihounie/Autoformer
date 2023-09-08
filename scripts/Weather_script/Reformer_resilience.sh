export CUDA_VISIBLE_DEVICES=0
beta=2.0
for dual_init in 0.0
do
  for dual_lr in 0.01
  do
    for perturbation_lr in 0.01
    do
      for epsilon in 0.0
      do
        for alpha in 1.0 2.0
        do
        for pred_len in 96 192 336
        do
        python -u run.py \
          --is_training 1 \
          --root_path ./dataset/weather/ \
          --data_path weather.csv \
          --model_id weather_96_192 \
          --model Reformer \
          --data custom \
          --features M \
          --seq_len 96 \
          --label_len 48 \
          --pred_len $pred_len \
          --train_epochs 10 \
          --e_layers 2 \
          --d_layers 1 \
          --factor 3 \
          --enc_in 21 \
          --dec_in 21 \
          --c_out 21 \
          --des 'Exp' \
          --itr 1 \
          --dual_lr $dual_lr \
          --constraint_level $epsilon \
          --dual_init $dual_init \
          --wandb_run 'Resilient' \
          --resilient_alpha $alpha \
          --resilient_beta $beta \
          --resilient_lr $perturbation_lr \
          --seed 1
          done 
        done
      done
    done
  done
done
