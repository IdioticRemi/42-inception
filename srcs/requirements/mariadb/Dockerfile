FROM debian:buster

RUN		apt-get update -y	\
	&&	apt-get upgrade -y	\
	&&	apt-get install -y mariadb-server

COPY 	./conf/ .

RUN		cp ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN		sh ./setdata.sh			\
	&&	sh ./start.sh			\
	&&	rm -f .env

RUN		service mysql start	\
	&&	mysql < setup.sql

EXPOSE	3306

CMD		mysqld_safe