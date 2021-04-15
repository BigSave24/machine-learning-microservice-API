#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kedmond24/mlprediction

# Step 2
# Run the Docker Hub container with kubernetes
docker login -u kedmond24
kubectl run mlprediction \
    --image=$dockerpath:v1.0 \
    --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlprediction 8000:80
