# LaRE
Official code for LaRE2: Latent Reconstruction Error Based Method for Diffusion-Generated Image Detection. (CVPR 2024)

[paper](https://arxiv.org/pdf/2403.17465)

## Dataset
[GenImage](https://github.com/GenImage-Dataset/GenImage)

## Usage
### step1: LaRE extraction
```bash
bash extract_lare.sh
```

### step2: Model training
```bash
bash train_classifier_wmap.sh
```

## TODO
- [x] Release code for feature extraction
- [x] Release code for model training

## Acknowledgments
* https://github.com/HighwayWu/LASTED
* https://github.com/Tsingularity/dift