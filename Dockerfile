FROM ghcr.io/graalvm/jdk-community:24

ENV ARGS=""

EXPOSE 25565

WORKDIR /app

RUN curl -LJo 'limbo.jar' 'https://github.com/BoomEaro/NanoLimbo/releases/download/latest/NanoLimbo-1.9.8.jar'
COPY ./run_limbo.sh /app

ENTRYPOINT /app/run_limbo.sh "$ARGS"
