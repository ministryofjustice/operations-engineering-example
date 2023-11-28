.ONESHELL:

# Targets
help:
	@echo "Available commands:"
	@echo "make setup            - Setup the environment"
	@echo "make preview          - Run locally in debug mode"
	@echo "make local            - Run locally in Docker"

setup:
	python3 -m venv venv
	@venv/bin/pip3 install --upgrade pip
	@venv/bin/pip3 install -r requirements.txt

preview:
	flask --app application/__init__ --debug run

local:
	docker compose up --build

    
.PHONY: help setup preview local
