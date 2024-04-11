FROM buildkite/agent:latest

RUN apk update
RUN apk add curl

ENV DENO_INSTALL=/usr/local

RUN curl -fsSL https://deno.land/install.sh | sh

CMD ["start"]
