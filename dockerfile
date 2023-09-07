FROM debian:latest
RUN apt-get update --allow-unauthenticated
RUN apt-get -y install gcc
WORKDIR /app
COPY . .
RUN gcc shell.c sqlite3.c -lpthread -ldl -lm -o sqlite3.so

