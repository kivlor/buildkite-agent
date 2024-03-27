FROM buildkite/agent:latest

RUN apk update
RUN apk add deno

CMD ["start"]

