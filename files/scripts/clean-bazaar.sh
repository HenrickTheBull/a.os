#!/usr/bin/env bash
set -oue pipefail

# Define the target directory
TARGET_DIR="/etc/bazaar"

# Check if directory exists to avoid errors
if [ -d "$TARGET_DIR" ]; then
    echo "Cleaning $TARGET_DIR while preserving blocklist.yaml and bazaar.yaml..."
    
    # -mindepth 1: Don't delete the parent folder itself
    # ! -name: Exclude these specific names
    # -delete: Perform the deletion
    find "$TARGET_DIR" -mindepth 1 ! -name 'blocklist.yaml' ! -name 'bazaar.yaml' -delete
else
    echo "Directory $TARGET_DIR not found, skipping."
fi