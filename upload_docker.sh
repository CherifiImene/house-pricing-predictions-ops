#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=imenecherifi/pricespredictions

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/my_password.txt | docker login --username imenecherifi --password-stdin
docker tag pricespredictions imenecherifi/pricespredictions

# Step 3:
# Push image to a docker repository
docker push imenecherifi/pricespredictions