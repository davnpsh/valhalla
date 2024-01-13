#!/bin/bash

# This script must be executed manually by the user using SUDO, not root.

# Folder path
backups_folder=""

# Check if the folder exists
if [ ! -d "$backups_folder" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Get the current date and time in the specified format
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create a folder name with the current date and time
folder_name="borg-valhalla-extracted_($timestamp)"

# Output folder
output_path=""

# User
user=""

# Create a tar archive of the folder
sudo tar -cvf "$output_path" "$backups_folder"

sudo chown "$user:$user" "$output_path"

echo "Tar archive created: $folder_name.tar"