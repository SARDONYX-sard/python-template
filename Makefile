ENV="./sample.env"

default: start

start:
				poetry run dotenv --file ${ENV} run -- poetry run python src/main.py

lint:
				poetry run pysen run lint

lint-fix:
				poetry run pysen run format && \
				poetry run pysen run lint

test:
				poetry run pytest

install-dev:
				poetry install

install:
				poetry install --no-dev

clean:
				rm -rf  **/__pycache__ **/**/__pycache__ .venv


.PHONY: clean test
