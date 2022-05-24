#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t my-nginx-app .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run nginx app 
docker run --name my-nginx -d -p 8080:80 my-nginx-app
