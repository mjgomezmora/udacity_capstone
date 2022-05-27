#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=capstone_image_green

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username mjgmora
docker tag capstone_image_green mjgmora/capstone_image_green
# Step 3:
# Push image to a docker repository
docker push mjgmora/capstone_image_green