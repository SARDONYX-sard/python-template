# Python template

[English](../../../README.md) | 日本語

## 目次

<!-- TOC depthFrom:2 -->

- [Python template](#python-template)
  - [目次](#目次)
  - [必要条件](#必要条件)
  - [クイックスタート](#クイックスタート)
  - [Make の使い方](#make-の使い方)
  - [開発に際して](#開発に際して)
  - [ライセンス](#ライセンス)

<!-- /TOC -->

## 必要条件

- python 3.8.x
- poetry(package manager):

`poetry` がインストールされていない場合は、コマンドを実行します。

```shell
pip install poetry
```

Anaconda3

```shell
conda install -c conda-forge poetry
```

More info is
[here.](https://raw.githubusercontent.com/python-poetry/poetry/master/install)

## クイックスタート

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

## Make の使い方

| Command        | Description                         |
| :------------- | :---------------------------------- |
| `make start`   | Pythonファイル（デフォルト：`src/run.py`）を実行する |
| `make install` | 依存関係のインストール (開発版)                   |
| `make install` | 依存関係のインストール(本番用)                    |
| `make test`    | pytestでテストする。                       |
| `make lint`    | pysenを使って Lint                      |
| `make clean`   | `__pycache__` ファイルを削除               |

Windowsをお使いの場合、`make`コマンドをインストールできます。
[こちら](http://gnuwin32.sourceforge.net/packages/make.htm)をご覧ください。
(`setup`ボタンをクリックします)。

## 開発に際して

- [Contributing.md](./CONTRIBUTING.md) を参照してください。

## ライセンス

Unlicense
