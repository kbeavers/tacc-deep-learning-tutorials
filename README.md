# coral-species-CNN-tutorial
Tutorial for building a Convolutional Neural Network (CNN) for coral species classification.

## Setup

**Clone the Repo**

First, log in to Frontera.
```bash
ssh username@frontera.tacc.utexas.edu
(username@frontera.tacc.utexas.edu) Password: 
(username@frontera.tacc.utexas.edu) TACC Token Code:

# ------------------------------------------------------------------------------
# Welcome to the Frontera Supercomputer
# Texas Advanced Computing Center, The University of Texas at Austin
# ------------------------------------------------------------------------------
```

Then, navigate to your $SCRATCH directory and clone this repo.
```
cds
git clone git@github.com:kbeavers/coral-species-CNN-tutorial.git
```

## Kernel Setup

To set up your Jupyter notebook kernel, follow these steps:

1. Start an interactive session:
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
   apptainer pull docker://kbeavers/tf-cuda101-frontera:0.1
   ```
   This will create `tf-cuda101-frontera_0.1.sif` in your $SCRATCH directory.

4. Run the kernel installation script:
   ```bash
   bash ./coral-species-CNN-tutorial/scripts/install_kernel.sh
   ```
   This script sets up the Jupyter kernel required for running the CNN tutorial.


## Dataset

This project uses images of three different coral species downloaded from iNaturalist using the `pyinaturalist` API.

### Dataset Setup

The dataset is included in the repository as a ZIP file. To set up the dataset, run the following command:

```bash
bash ./coral-species-CNN-tutorial/scripts/download_dataset.sh
```

This script will unzip the dataset into the `./data/coral-species` directory.

### Note

Ensure that the `coral-species.zip` file is present in the `./data` directory before running the script.