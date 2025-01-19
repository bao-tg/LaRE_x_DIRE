#python feature_extractor.py \
#--input_path /home/petterluo/data/aigc_data/GenImage/anns/train_sd1d5.txt \
#--output_path /home/ubuntu/21bao.tg/LaRExDIRE/outputs/train_sd1d5 \
#--t 261 \
#--prompt '' \
#--ensemble_size 8 \
#--pretrained_model_name_or_path "/home/petterluo/huggingface_models/hub/models--runwayml--stable-diffusion-v1-5/snapshots/39593d5650112b4cc580433f6b0435385882d819" \
#--img_size 256 256 \
#--use_prompt_template \
#--n-gpus 8

#strings=("train_adm" "") # , ,"","","","","","","","","")
#strings=("train_biggan" "train_glide" "train_imagenet_biggan")
#strings=("train_imagenet_glide" "train_imagenet_mj" "train_imagenet_sd1d4")
#strings=("train_imagenet_vqdm" "train_imagenet_wukong" "train_mj")
#strings=("train_sd1d4" "train_vqdm" "train_wukong")
#strings=()

# fix
#strings=("train_adm" "train_imagenet_adm" "train_sd1d5" "train_imagenet_sd1d5" )
#strings=("train_biggan" "train_imagenet_biggan" "train_glide" "train_imagenet_glide" )
#strings=("train_sd1d4" "train_imagenet_sd1d4" "train_vqdm" "train_imagenet_vqdm" )
#strings=("train_wukong" "train_imagenet_wukong" "train_mj" "train_imagenet_mj" )
strings=("imagenet_ai_0419_biggan" "imagenet_ai_0419_vqdm" "imagenet_0424_sdv5" "imagenet_0424_wukong" "imagenet_ai_0508_adm" "imagenet_ai_0123_glide" "imagenet_ai_0123_midjourney")
for string in "${strings[@]}"; do
  python extract_lare.py \
    --input_path /home/ubuntu/21bao.tg/LaRE_X_DIRE/tiny-genimage/${string}.txt \
    --t 200 \
    --prompt 'a photo' \
    --ensemble_size 4 \
    --img_size 256 256 \
    --use_prompt_template \
    --n-gpus 8
done
