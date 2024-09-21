#build-image.sh

# Stop the script if any error occurs
set -euo pipefail

docker build -t "${CONTAINER_REGISTRY}/book_catalog:${VERSION}" -f book_catalog/Dockerfile .

docker build -t "${CONTAINER_REGISTRY}/inventory_management:${VERSION}" -f inventory_management/Dockerfile .

echo "Docker images built successfully."