# lemon-leaf-CNN-tutorial
Tutorial for building a Convolutional Neural Network (CNN) for Lemon Leaf Disease (Image) Classification

## Setup

**Clone the Repo**

First, log in to Lonestar6.
```
ssh username@lonestar6.tacc.utexas.edu
password:
TACC-token:
```

Then, navigate to your $SCRATCH directory and clone this repo.
```
cds
git clone git@github.com:kbeavers/lemon-leaf-CNN-tutorial.git
```

**Kernel Setup**

To set up your Jupyter notebook kernel, follow these steps:

1. Start an interactive session on the supercomputer:
   ```bash
   cds
   idev -m 60
   ```

2. Load the necessary modules:
   ```bash
   module load tacc-apptainer
   ```

3. Pull the Docker container image:
   ```bash
   apptainer pull docker://kbeavers/lemon-leaf-cnn-ls6:0.1
   ```
   This will create `lemon-leaf-cnn-ls6.sif` in your $SCRATCH directory.

4. Run the kernel installation script:
   ```bash
   bash ./lemon-leaf-CNN-tutorial/scripts/install_kernel.sh
   ```
   This script sets up the Jupyter kernel required for running the CNN tutorial.

**Download Dataset**

Finally, run ``download_dataset.sh`` to install the lemon leaf image dataset in $SCRATCH.
```bash
bash ./lemon-leaf-CNN-tutorial/scripts/download_dataset.sh
```