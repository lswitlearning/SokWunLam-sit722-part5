#!/bin/bash

# Push-image.sh

# Stop the script if any error occurs
set -euo pipefail

# Log in to the container registry
echo "${REGISTRY_PW}" | docker login "${CONTAINER_REGISTRY}" --username "${REGISTRY_UN}" --password-stdin

# Push the book_catalog image
docker push "${CONTAINER_REGISTRY}/book_catalog:${VERSION}"

# Push the inventory_management image
docker push "${CONTAINER_REGISTRY}/inventory_management:${VERSION}"

echo "Docker images pushed successfully."