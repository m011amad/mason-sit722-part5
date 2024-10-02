set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker buildx build --platform linux/amd64 -t "$CONTAINER_REGISTRY/book-catalog:$VERSION" --file ./book_catalog/Dockerfile ./book_catalog
docker buildx build --platform linux/amd64 -t "$CONTAINER_REGISTRY/inventory-management:$VERSION" --file ./inventory_management/Dockerfile ./inventory_management