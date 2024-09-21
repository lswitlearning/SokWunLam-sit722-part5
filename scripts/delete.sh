# delete.sh


# Stop the script if any error occurs
set -euo pipefail

# Apply the Kubernetes deployment
kubectl delete -f scripts/kubernetes/deployment.yaml

echo "Microservices deleted successfully."