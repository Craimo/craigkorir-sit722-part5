# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Deploy book catalog
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -

# Deploy inventory management
envsubst < ./scripts/kubernetes/service.yaml | kubectl apply -f -

# echo "Both services have been deployed successfully."
