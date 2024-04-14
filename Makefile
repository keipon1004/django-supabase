DC=docker-compose

build:
	@$(DC) build

up:
	@$(DC) up

down:
	@$(DC) down

logs:
	@$(DC) logs -f