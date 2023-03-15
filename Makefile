v := v0.0.7

push:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t semichkin/airc:${v} -t semichkin/airc:latest --push .

build:
	echo ${v} && docker build -t semichkin/airc:${v} -t semichkin/airc:latest .