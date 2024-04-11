FROM buildkite/agent:latest

RUN apk update
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community deno

ENV DENO_INSTALL_ROOT=/usr/local
RUN deno install -Arf jsr:@deno/deployctl

CMD ["start"]
