build:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t semichkin/airc:v0.0.7 -t semichkin/airc:latest --push .