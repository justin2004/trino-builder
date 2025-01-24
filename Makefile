build-trino: build-image
	docker run --rm -it --platform linux/amd64 -v `pwd`:/mnt -v trino-builder-m2:/root/.m2 justin2004/trino-builder
build-image:
	docker build --platform linux/amd64 -t justin2004/trino-builder .


