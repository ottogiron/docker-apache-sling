APACHE_SLING_VERSION := 8
DOCKER_IMAGE_NAME := ottogiron/sling

build:
	docker build -t $(DOCKER_IMAGE_NAME) .
	docker tag $(DOCKER_IMAGE_NAME) $(DOCKER_IMAGE_NAME):$(APACHE_SLING_VERSION)

download_sling:
	wget -qO- -O sling.jar http://www-us.apache.org/dist//sling/org.apache.sling.launchpad-$(APACHE_SLING_VERSION).jar
