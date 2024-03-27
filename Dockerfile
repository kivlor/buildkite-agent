FROM buildkite/agent:latest

#RUN curl -fsSL https://deno.land/install.sh | sh

#ENV DENO_INSTALL="/root/.deno"
#ENV PATH="$DENO_INSTALL/bin:$PATH"

RUN apk update
RUN apk add deno

CMD ["start"]

