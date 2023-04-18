# diffusers-text-to-image

```
git clone https://github.com/deforum-art/diffusers-text-to-image.git
cd diffusers-text-to-image
```
```
chmod +x install_miniconda.sh
./install_miniconda.sh
```
```
conda create -n bm python=3.10 -y
conda activate bm
conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia -y
```
```
chmod +x setup_environment.sh
./setup_environment.sh
```
```
accelerate config
```
```bash
export MODEL_NAME="CompVis/stable-diffusion-v1-4"
export dataset_name="lambdalabs/pokemon-blip-captions"

accelerate launch --mixed_precision="fp16"  train_text_to_image.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --dataset_name=$dataset_name \
  --use_ema \
  --resolution=512 --center_crop --random_flip \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --gradient_checkpointing \
  --max_train_steps=15000 \
  --learning_rate=1e-05 \
  --max_grad_norm=1 \
  --lr_scheduler="constant" --lr_warmup_steps=0 \
  --output_dir="sd-pokemon-model"
```
