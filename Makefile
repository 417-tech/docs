.PHONY: all setup setup-dev format serve build

all: setup format build

setup:
	uv sync --no-default-groups

setup-dev:
	uv sync --group dev
	# TODO: Add pre-commit or prek to handle formatting

format:
	uv run mdformat ./docs/

serve:
	uv run zensical serve

build:
	uv run zensical build
