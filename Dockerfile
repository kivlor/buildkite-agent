FROM buildkite/agent:latest

RUN apk update
RUN apk add --no-cache deno

CMD ["start"]
