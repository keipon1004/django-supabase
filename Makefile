DC=docker-compose

build:
	@$(DC) build

up:
	@$(DC) up

down:
	@$(DC) down

logs:
	@$(DC) logs -f

makemigrations:
	@$(DC) exec web python manage.py makemigrations

migrate:
	@$(DC) exec web python manage.py migrate

install:
	@$(DC) exec web pip install -r requirements.txt
