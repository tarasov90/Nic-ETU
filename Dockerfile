FROM centos:7
RUN yum -y install gcc
WORKDIR /app
COPY ./sqlite-amalgamation-3260000/ .
RUN gcc shell.c sqlite3.c -lpthread -ldl -lm -o sqlite3.so

