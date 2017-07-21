.PHONY: build run tag push

REMOTE_REG ?= localhost:5000

IMAGE_NAME = k8s_queue_prober
REMOTE_TAG = $(REMOTE_REG)/$(IMAGE_NAME)

alloc: alloc.go
	docker run -v $(CURDIR):/go --rm golang go build -o ./alloc

build: alloc
	docker build -t $(IMAGE_NAME) .
run: build
	docker run --rm $(IMAGE_NAME)

tag: build
	docker tag $(IMAGE_NAME) $(REMOTE_TAG)
push: tag
	docker push $(REMOTE_TAG)
