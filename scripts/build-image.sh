#!/bin/bash

#build-image.sh

# Stop the script if any error occurs
set -e

docker build -t "${CONTAINER_REGISTRY}/book_catalog:${VERSION}" -f book_catalog/Dockerfile ./book_catalog

docker build -t "${CONTAINER_REGISTRY}/inventory_management:${VERSION}" -f inventory_management/Dockerfile ./inventory_management

echo "Docker images built successfully."