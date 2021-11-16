DOCKER_IMAGE_PREFIX=$(shell cat .env | grep docker_image_prefix | awk -F= '{ print $$2 }')

docker_rebuild_app:
	cd docker/app && docker build -t $(DOCKER_IMAGE_PREFIX)_app .

docker_rebuild_db:
	cd docker/db && docker build -t $(DOCKER_IMAGE_PREFIX)_db .

docker_rebuild_everything: docker_rebuild_db docker_rebuild_app

docker_up:
	docker-compose up --build

