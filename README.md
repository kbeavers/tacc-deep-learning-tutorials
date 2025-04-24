# tacc-deep-learning-tutorials

This repository contains hands-on tutorials and materials that accompany the [Deep Learning section](https://life-sciences-ml-at-tacc.readthedocs.io/en/latest/section3/overview.html) of the Life Sciences Machine Learning Institute at the [Texas Advanced Computing Center (TACC)](https://tacc.utexas.edu/). 

## 1. Accessing Frontera

Log into Frontera using SSH:

```bash
ssh username@frontera.tacc.utexas.edu
(username@frontera.tacc.utexas.edu) Password: 
(username@frontera.tacc.utexas.edu) TACC Token Code:

# ------------------------------------------------------------------------------
# Welcome to the Frontera Supercomputer
# Texas Advanced Computing Center, The University of Texas at Austin
# ------------------------------------------------------------------------------
```

## 2. Getting the Tutorial Materials

Navigate to your scratch directory and clone this tutorial repository:

```bash
cds # shortcut for cd #SCRATCH
git clone git@github.com:kbeavers/tacc-deep-learning-tutorials.git
```

## 3. Environment Setup

### a. Start an Interactive Session

```bash
cds
idev -m 20
```

### b. Set up the Container Environment

```bash
# Load the Apptainer module
module load tacc-apptainer

# Pull the Docker container image created for this tutorial
apptainer pull docker://kbeavers/tf-213:frontera

# Run the kernel setup script
cd tacc-deep-learning-tutorials
bash ./scripts/install_kernel.sh
```

## 4. Dataset Preparation

Extract the provided coral species image dataset

```bash
bash ./scripts/download_dataset.sh
```

## 5. Launching the Tutorial

### a. Copy the tutorial notebooks to your home directory

```bash
cp ./tutorials/Mushroom-ANN-tutorial.ipynb $HOME/
cp ./tutorials/Coral-CNN-tutorial.ipynb $HOME/
```

These notebooks are provided as blank templates for you to fill in as you work through the exercises. To complete this tutorial:

 1. Follow the step-by-step instructions on our [ReadTheDocs](https://life-sciences-ml-at-tacc.readthedocs.io/en/latest/section3/overview.html).
 2. Write the code from the ReadTheDocs page into the corresponding empty cells in your notebook.
 3. Execute each cell to build your ANN/CNN and see the results. 

If you get stuck, a completed solution is available within the `tutorials` directory of this repository.


### b. Access the [TACC Analysis Portal](https://tap.tacc.utexas.edu/jobs/) and configure your session as follows:

 - System: Frontera
 - Application: Jupyter Notebook
 - Project: <your-allocation>
 - Queue: rtx
 - Job Name: DL-Training
 - Time Limit: 2:0:0
 - Reservation: <your-reservation> (or leave blank if no reservation)

### c. Final Steps:

 - Click 'Submit' and wait for the job to start
 - Click 'Connect' when the a node becomes available
 - Open `Mushroom-ANN-tutorial.ipynb` or `Coral-CNN-tutorial.ipynb` in your $HOME directory
 - Change your kernel to `tf-213`
 - Trust the kernel 

Note: The kernel may take a few moments to initialize on first use.