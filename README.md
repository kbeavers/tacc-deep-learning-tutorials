# jellyfish-species-CNN-tutorial
Tutorial for building a Convolutional Neural Network (CNN) for Jellyfish Species (Image) Classification

## Setup

**Clone the Repo**

First, log in to Frontera.
```
ssh username@ls6.tacc.utexas.edu
(username@ls6.tacc.utexas.edu) Password: 
(username@ls6.tacc.utexas.edu) TACC Token Code:

# ------------------------------------------------------------------------------
# Welcome to the Frontera Supercomputer
# Texas Advanced Computing Center, The University of Texas at Austin
# ------------------------------------------------------------------------------
```

Then, navigate to your $SCRATCH directory and clone this repo.
```
cds
git clone git@github.com:kbeavers/jellyfish-species-CNN-tutorial.git
```

## Kernel Setup

To set up your Jupyter notebook kernel, follow these steps:

1. Start an interactive session on the supercomputer:
   ```bash
   cds
   idev -m 20
   ```

2. Load the necessary modules:
   ```bash
   module load tacc-apptainer
   ```

3. Pull the Docker container image:
   ```bash
   apptainer pull docker://kbeavers/tf-cuda122-ls6:0.1
   ```
   This will create `tf-cuda122-ls6_0.1.sif` in your $SCRATCH directory.

4. Run the kernel installation script:
   ```bash
   cd jellyfish-species-CNN-tutorial
   bash ./scripts/install_kernel.sh
   ```
   This script sets up the Jupyter kernel required for running the CNN tutorial.


## Dataset

This project uses the [Jellyfish Species Dataset](https://www.kaggle.com/datasets/anshtanwar/jellyfish-types). The dataset contains various species of jellyfish and is used for classification tasks.

### Dataset Setup

The dataset is included in the repository as a ZIP file. To set up the dataset, run the following command:

```bash
cd jellyfish-species-CNN-tutorial
bash ./scripts/download_dataset.sh
```

This script will unzip the dataset into the `./data/jellyfish-species` directory.

### Note

Ensure that the `jellyfish-species.zip` file is present in the `./data` directory before running the script.