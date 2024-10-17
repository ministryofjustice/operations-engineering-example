.ONESHELL:

# Targets
help:
	@echo "Available commands:"
	@echo "make setup            - Setup the environment"
	@echo "make preview          - Run locally in debug mode"
	@echo "make local            - Run locally in Docker"

setup:
	pip3 install pipenv
	pipenv install --dev

preview:
	pipenv run flask --app application/__init__ --debug run

local:
	docker compose up --build

    
.PHONY: help setup preview local
