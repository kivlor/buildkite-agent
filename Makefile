all: help

.PHONY: help
help:
	@echo "start: start then deno agent"
	@echo "logs: follow deno agent logs"
	@echo "stop: stop the deno agent"

.PHONY: build
build:
	docker build . -t kivlor/deno-agent:latest

.PHONY: start
start:
	docker run -d -t --rm --name deno-agent --env-file .env kivlor/deno-agent:latest start

.PHONY: stop
stop:
	docker stop deno-agent

.PHONY: logs
logs:
	docker logs -f deno-agent

