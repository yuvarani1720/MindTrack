#!/bin/bash

# Update kubeconfig
aws eks update-kubeconfig --region ap-south-1 --name brain-tasks-cluster

# Apply Kubernetes manifests
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Optional: rollout status
kubectl rollout status deployment/brain-tasks-app
