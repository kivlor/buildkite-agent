all: help

.PHONY: help
help:
	@echo "start: start deno server"

.PHONY: build
build:
	docker build . -t kivlor/deno-agent:latest

.PHONY: start
start:
	docker run -d -t --rm --name buildkite-agent --env-file .env kivlor/deno-agent:latest start

.PHONY: stop
stop:
	docker stop buildkite-agent

.PHONY: logs
logs:
	docker logs -f buildkite-agent

