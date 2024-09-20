# Your Solutionset -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

# Push book catalog image
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION

# Push inventory management image
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION

echo "Both images have been pushed successfully."
