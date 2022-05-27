#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mjgmora/udacity_clapstone:0.1.193

# Step 2
# Create deployment and service for the docker ID/path
kubectl apply -f ./deployment/deployment-service.yaml

# Step 3:
# List kubernetes pods
kubectl get pods

# Logs
#kubectl logs devopsmicroservices-app-6994b64c66-lj9v5

