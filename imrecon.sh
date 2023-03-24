#!/bin/bash

#SBATCH --job-name=unetseg
#SBATCH --mail-user=omkark1@umbc.edu
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=10-12:00:00
#SBATCH --constraint=rtx_6000
#SBATCH --output=/nfs/ada/oates/users/omkark1/ArteryProj/Pytorch-UNet/outfiles/imrecon_run_1.out
#SBATCH --error=/nfs/ada/oates/users/omkark1/ArteryProj/Pytorch-UNet/outfiles/imrecon_run_1.err


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/

source activate unet

python /nfs/ada/oates/users/omkark1/ArteryProj/Pytorch-UNet/train.py -b=8 -e=100 -v=16.7
