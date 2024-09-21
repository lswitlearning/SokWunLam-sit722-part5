# deploy.sh


# Stop the script if any error occurs
set -euo pipefail

# Apply the Kubernetes deployment
kubectl apply -f scripts/kubernetes/deployment.yaml

echo "Microservices deployed successfully."