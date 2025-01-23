build-trino: build-image
	docker run --rm -it -v trino-builder-m2:/root/.m2 justin2004/trino-builder
build-image:
	docker build -t justin2004/trino-builder .


