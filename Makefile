ENV="./sample.env"

default: start

start:
				poetry run dotenv --file ${ENV} run -- poetry run python src/main.py

lint:
				poetry run pysen run lint

lint-fix:
				poetry run pysen run format && poetry run pysen run lint

test:
				poetry run pytest

install:
				poetry install
				pre-commit install
				pre-commit install --hook-type commit-msg

install-prod:
				poetry install --no-dev

clean:
				rm -rf  **/__pycache__ **/**/__pycache__ .venv

# ------------------------------------------------------------------------------
# docker-compose commands
# ------------------------------------------------------------------------------
ifeq ($(OS),Windows_NT)
	SHELL := pwsh
else
	SHELL := bash
endif

CORE_SERVICES := "app"
ALL_SERVICES := ${CORE_SERVICES}

CORE_SERVICES_FILES := -f docker-compose.yml
COMPOSE_ALL_FILES := ${CORE_SERVICES_FILES}
CORE_SERVICES_FILES := -f docker-compose.yml

dc-all: down core

dc-build:
	@docker-compose ${COMPOSE_ALL_FILES} up -d --build ${ALL_SERVICES}

dc-core:
	@docker-compose ${COMPOSE_CORE_FILES} up -d --build ${CORE_SERVICES}

dc-down:
	@docker-compose ${COMPOSE_ALL_FILES} down

dc-stop:
	@docker-compose ${COMPOSE_ALL_FILES} stop ${ALL_SERVICES}

dc-restart:
	@docker-compose ${COMPOSE_ALL_FILES} restart ${ALL_SERVICES}

dc-rm:
	@docker-compose $(COMPOSE_ALL_FILES) rm -f ${ALL_SERVICES}

dc-logs:
	@docker-compose $(COMPOSE_ALL_FILES) logs --follow --tail=1000 ${ALL_SERVICES}

dc-images:
	@docker-compose $(COMPOSE_ALL_FILES) images ${ALL_SERVICES}

dc-clean: ## Remove all Containers and Delete Volume Data
	@docker-compose ${COMPOSE_ALL_FILES} down -v


.PHONY: clean test
