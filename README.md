# coral-species-CNN-tutorial
Tutorial for building a Convolutional Neural Network (CNN) for coral species classification.

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
git clone git@github.com:kbeavers/coral-species-CNN-tutorial.git
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
apptainer pull docker://kbeavers/tf-cuda101-frontera:0.1

# Run the kernel setup script
cd coral-species-CNN-tutorial
bash ./scripts/install_kernel.sh
```

## 4. Dataset Preparation

Extract the provided coral species image dataset

```bash
bash ./scripts/download_dataset.sh
```

## 5. Launching the Tutorial

### a. Copy the tutorial notebook to your home directory

```bash
cp ./tutorials/Coral-CNN-tutorial.ipynb $HOME/
```

### b. Access the [TACC Analysis Portal](https://tap.tacc.utexas.edu/jobs/) and configure your session as follows:

 - System: Frontera
 - Application: Jupyter Notebook
 - Project: <your-allocation>
 - Queue: rtx
 - Job Name: CNN-Training
 - Time Limit: 2:0:0
 - Reservation: <your-reservation> (or leave blank if no reservation)

### c. Final Steps:

 - Click 'Submit' and wait for the job to start
 - Click 'Connect' when the a node becomes available
 - Open `Coral-CNN.ipynb` in your $HOME directory
 - Change your kernel to `tf-cuda101`
 - Trust the kernel 

Note: The kernel may take a few moments to initialize on first use.

### d. Important – Following the Tutorial

The `Coral-CNN-tutorial.ipynb` notebook is provided as a blank template for you to fill in as you work through the exercises. To complete this tutorial:

1. Follow the step-by-step instructions at:
   [https://life-sciences-ml-at-tacc.readthedocs.io/en/latest/section3/Hands-On-CNN.html](https://life-sciences-ml-at-tacc.readthedocs.io/en/latest/section3/Hands-On-CNN.html)

2. Write the code from the ReadTheDocs page into the corresponding empty cells in your notebook.

3. Execute each cell to build your CNN and see the results.

If you get stuck, a completed solution is available in `Coral-CNN-solution.ipynb` within the `tutorials` directory of this repository, but we encourage you to try solving the exercises on your own first. 