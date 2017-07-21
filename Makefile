.PHONY: build run

IMAGE_NAME=$(IMAGE_PREFIX)k8s_queue_prober

build:
	docker build -t $(IMAGE_NAME) .
run: build
	docker run --rm $(IMAGE_NAME)
push:
	docker push $(IMAGE_NAME)
