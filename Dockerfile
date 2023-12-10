FROM ghcr.io/graalvm/jdk-community:17

ENV ARGS=""

EXPOSE 25565

WORKDIR /app

RUN curl -LJo 'limbo.jar' 'https://github.com/Nan1t/NanoLimbo/releases/download/v1.6/NanoLimbo-1.6-all.jar'
COPY ./run_limbo.sh /app

ENTRYPOINT /app/run_limbo.sh "$ARGS"
