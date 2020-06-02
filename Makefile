SHELL := /bin/bash -e

export STACK_NAME=datascience
export HOSTNAME=$(hostname)

.PHONY: help

help:	## Help command
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

deploy:	build ## Deploys stack
	docker-compose up -d 

build: ## Builds docker image
	docker-compose build

start-jupyter:	## Starts jupyter notebook
	docker-compose run app "jupyter notebook --ip 0.0.0.0 --no-browser --allow-root"

teardown: ## Teardown stack
	docker-compose down

deploy-zeppelin:	## Deploys zeppelin stack
	docker stack deploy -c zeppelin-stack.yml zeppelin

teardown-zeppelin: ## Teardown stack
	docker stack rm zeppelin

