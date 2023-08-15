FROM debian:latest
RUN apt-get update && apt-get -y install gcc
WORKDIR /app
COPY . .
RUN gcc shell.c sqlite3.c -lpthread -ldl -lm -o sqlite3
