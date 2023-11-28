.ONESHELL:

# Default values for variables (can be overridden by passing arguments to `make`)
# PYTHON_SOURCE_FILES = ./instance ./report_app ./tests ./dynambodb_testing setup.py operations_engineering_reports.py build.py
# RELEASE_NAME ?= default-release-name
# AUTH0_CLIENT_ID ?= default-auth0-client-id
# AUTH0_CLIENT_SECRET ?= default-auth0-client-secret
# APP_SECRET_KEY ?= default-app-secret-key
# ENCRYPTION_KEY ?= default-encryption-key
# API_KEY ?= default-api-key
# HOST_SUFFIX ?= default-host-suffix
#

# Targets
help:
	@echo "Available commands:"
	@echo "make setup            - Setup the environment"
#	@echo "make test             - Run tests"
	@echo "make preview          - Run locally in debug mode"
#	@echo "make deploy-dev       - Deploy the application to the dev namespace"

setup:
	python3 -m venv venv
	@venv/bin/pip3 install --upgrade pip
	@venv/bin/pip3 install -r requirements.txt

preview:
	flask --app application/__init__ --debug run

local:
	docker compose up --build

    
.PHONY: help setup preview local
