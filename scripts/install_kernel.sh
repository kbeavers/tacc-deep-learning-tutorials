#!/bin/bash

# Define the kernel directory name
KERNEL_DIR="tf-cuda122" 

# Create the directory
mkdir -p ~/.local/share/jupyter/kernels/$KERNEL_DIR

# Write the JSON content to the kernel directory
cat <<EOL > ~/.local/share/jupyter/kernels/$KERNEL_DIR/kernel.json
{
  "display_name": "tf-cuda122",
  "language": "python",
  "argv": [
    "/opt/apps/tacc-apptainer/1.3.3/bin/apptainer",
    "exec",
    "--nv",
    "--bind",
    "/run/user:/run/user",
    "/scratch/09794/kbeavers/lemon-leaf-cnn-ls6.sif",
    "python3",
    "-m",
    "ipykernel_launcher",
    "--debug",
    "-f",
    "{connection_file}",
    "$SCRATCH/lemon-leaf-cnn-ls6.sif"  # This is the user-provided path
  ]
}
EOL

echo "Kernel directory created at ~/.local/share/jupyter/kernels/$KERNEL_DIR and kernel.json has been added."