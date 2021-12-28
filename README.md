# Python template

## Table of Contents

<!-- TOC depthFrom:2 -->

- [Python template](#python-template)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Make usage](#make-usage)
  - [Development](#development)
  - [License](#license)

<!-- /TOC -->

## Requirements

- python (3.7 or 3.8.x)
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
