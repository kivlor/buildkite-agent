FROM buildkite/agent:latest

RUN apk update
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community deno

CMD ["start"]
