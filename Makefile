BASEIMAGE=ubuntu:24.04

build:
	docker build --build-arg TARGETPLATFORM=linux/amd64 --build-arg BASEIMAGE=$(BASEIMAGE) -t mqtt:local .

buildx:
	# docker buildx build --progress plain --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg BASEIMAGE=$(BASEIMAGE) --push -t Stebe242/mqtt:multiarch .
	docker buildx build --progress plain --platform linux/amd64 --build-arg BASEIMAGE=$(BASEIMAGE) --push -t Stebe242/mqtt:multiarch .
