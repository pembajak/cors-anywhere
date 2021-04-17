.PHONY: default help

APP_NAME = sajiwa-dashboard

define HEADER
	SAJIWA Dashboard 😍🍺🍺
endef
export HEADER


docker-down:
	@echo "Docker down"
	docker-compose stop && docker rmi $$(docker-compose images -q) --force

docker-up:
	@echo "Docker up"
	docker-compose up -d
