FROM elixir

WORKDIR /app
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install python-pip cron -y && pip install speedtest-cli

ENV INFLUX_HOST localhost
ENV INFLUX_PORT 1122

ADD . /app

RUN mix local.hex --force
RUN mix do deps.get, compile

ENTRYPOINT /bin/bash
