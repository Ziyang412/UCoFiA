python -m torch.distributed.launch --nproc_per_node=4 \
main_ucofia.py --do_train --num_thread_reader=8 \
    --lr 1e-4 --batch_size=128  --batch_size_val 32 \
    --epochs=15  --n_display=100 \
    --data_path "[VATEX annotation path]" \
    --features_path "[VATEX video path]" \
    --output_dir "[Your output path]" \
    --max_words 32 --max_frames 12 \
    --datatype vatex \
    --feature_framerate 1 --coef_lr 1e-3 \
    --freeze_layer_num 0 --slice_framepos 2 \
    --loose_type --linear_patch 2d --sim_header seqTransf \
    --pretrained_clip_name ViT-B/32