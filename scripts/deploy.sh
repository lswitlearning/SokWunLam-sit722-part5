#!/bin/bash

# deploy.sh

# Stop the script if any error occurs
set -e

# Replace environment variables and create a temporary deployment file
envsubst < scripts/kubernetes/deployment.yaml > scripts/kubernetes/deployment-withenv.yaml

# Use kubectl to deploy to AKS
kubectl apply -f scripts/kubernetes/deployment-withenv.yaml

# Update the images after successful deployment
kubectl set image deployment/book-catalog-deployment book-catalog="${CONTAINER_REGISTRY}/book_catalog:${VERSION}"
kubectl set image deployment/inventory-management-deployment inventory-management="${CONTAINER_REGISTRY}/inventory_management:${VERSION}"

echo "Microservices deployed successfully."