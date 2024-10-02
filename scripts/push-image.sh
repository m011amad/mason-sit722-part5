set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker push $CONTAINER_REGISTRY/book-catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory-management:$VERSION
