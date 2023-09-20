DATA_PATH="[Your MSRVTT data and videos path]"
python -m torch.distributed.launch --nproc_per_node=4 \
    main_ucofia.py --do_eval --num_thread_reader=8 \
    --lr 1e-4 --batch_size=8  --batch_size_val 8 \
    --epochs=15  --n_display=100 \
    --train_csv ${DATA_PATH}/MSRVTT/msrvtt_data/MSRVTT_train.9k.csv \
    --val_csv ${DATA_PATH}/MSRVTT/msrvtt_data/MSRVTT_JSFUSION_test.csv \
    --data_path ${DATA_PATH}/MSRVTT/msrvtt_data/MSRVTT_data.json \
    --features_path ${DATA_PATH}/MSRVTT/videos/all \
    --output_dir "[Your output path]" \
    --max_words 32 --max_frames 12 \
    --datatype msrvtt --expand_msrvtt_sentences  \
    --feature_framerate 1 --coef_lr 1e-3 \
    --freeze_layer_num 0  --slice_framepos 2 \
    --loose_type --linear_patch 2d --sim_header seqTransf \
    --pretrained_clip_name ViT-B/32