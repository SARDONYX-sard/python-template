# Python template

## Table of Contents

- [Python template](#python-template)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Quick start](#quick-start)
  - [Make usage](#make-usage)
  - [Development](#development)
  - [License](#license)

## Requirements

- python 3.8.x
- poetry(package manager):

If you do not have `poetry` installed, you can install it with the following
command.

```shell
pip install poetry
```

if you use Anaconda3

```shell
conda install -c conda-forge poetry
```

More info is
[here.](https://raw.githubusercontent.com/python-poetry/poetry/master/install)

## Quick start

- local install

```bash
git clone https://github.com/SARDONYX-sard/python-template;
poetry install;
python-template/.venv/Scripts/activate;
pre-commit install;
pre-commit install --hook-type commit-msg;
poetry run python src/main.py
```

- with Docker

```bash
git clone https://github.com/SARDONYX-sard/python-template;
docker-compose up -d --build; # or make dc-build
poetry run python src/main.py
```

## Make usage

| Command            | Description                            |
| :----------------- | :------------------------------------- |
| `make start`       | Run python file(default: `src/run.py`) |
| `make install-dev` | Install dependencies (For dev)         |
| `make install`     | Install dependencies (For prod)        |
| `make test`        | Test with pytest                       |
| `make lint`        | Lint with pysen                        |
| `make lint-fix`    | Lint fix with pysen                    |
| `make clean`       | Remove `__pycache__` files             |

If you are using windows, you can install the `make` command
[here](http://gnuwin32.sourceforge.net/packages/make.htm). (Click the `Setup`
button at the top.)

## Development

- Please see... [Contributing.md](.github\CONTRIBUTING.md)

## License

Unlicense
