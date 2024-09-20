# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Delete book catalog deployment
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -

# Delete inventory management deployment
envsubst < ./scripts/kubernetes/service.yaml | kubectl delete -f -

echo "Both services have been deleted from Kubernetes successfully."
