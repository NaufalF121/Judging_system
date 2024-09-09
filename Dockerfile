#!/bin/sh

FROM golang:1.23.1

WORKDIR /app
COPY ./main.go ./
COPY ./judge.sh ./
COPY ./input.txt ./
COPY ./answer.txt ./
COPY ./compare.txt ./

RUN chmod +x judge.sh
CMD ["./judge.sh"]
