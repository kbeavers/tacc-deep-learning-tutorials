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
cp ./tutorials/Coral-CNN-ipynb $HOME/
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

The dataset is included in the repository as a ZIP file. To set up the dataset, run the following commands:

```bash
cd coral-species-CNN-tutorial
bash ./scripts/download_dataset.sh
```

This script will unzip the dataset into the `./data/coral-species` directory.

### Note

Ensure that the `coral-species.zip` file is present in the `./data` directory before running the script.

## Follow Tutorial via Jupyter Notebook

Finally, to follow along the tutorial in a Jupyter Notebook via the [TACC Analysis Portal](), run the following command:

```bash
cp tutorials/Coral-CNN.ipynb $HOME/
```

Then, navigate to the TACC Analysis Portal, and click on the following parameters:

System: Frontera
Application: Jupyter notebook
Project: <your-allocation>
Queue: rtx

Job Name: CNN-training
Time Limit: 2:0:0
Reservation: <leave blank>

Click 'Submit'. Then, on the next page, once the job is running, click 'Connect'.
You will be taken to a Jupyer Notebook running in you $HOME directory. Click on `Coral-CNN.ipynb` (The previous step copied this tutorial notebook over from your $SCRATCH directory). You are now ready to complete the tutorial via a Jupyter Notebook running on Frontera at TACC. Be sure to change your Kernel to `tf-cuda101`. You may have to click 'Not trusted' in the top right corner to Trust the kernel. The kernel make take a few moments to start up since this is our first time using it. 