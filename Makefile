v := v0.0.8

push:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t semichkin/airc:${v} -t semichkin/airc:latest --push .

b:
	docker buildx build --platform wasi/wasm,linux/amd64,linux/arm64,linux/arm/v7 -t semichkin/airc:${v} -t semichkin/airc:latest .

build:
	echo ${v} && docker build -t semichkin/airc:${v} -t semichkin/airc:latest .