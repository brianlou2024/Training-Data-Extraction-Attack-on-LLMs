results_name=$(date "+%Y-%m-%d-%H-%M-%S")

python score.py \
    --dataset local \
    --n_samples 1000 \
    --n_perturbation_list 10 \
    --base_model_name lvwerra/gpt2-imdb \
    --mask_filling_model_name t5-base \
    --batch_size 50 \
    --output_name $results_name \
    --skip_baselines \
    --cache_dir /home/arti/.cache \
    --dataset_path ../gpt-2-imdb_perp.txt

python process.py \
    --results_path results/$results_name/perturbation_10_z_results.json \
    --output_path results/$results_name/sorted_samples.json