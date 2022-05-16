FROM debian:buster

RUN		apt-get update -y	\
	&&	apt-get upgrade -y	\
	&&	apt-get install -y php-fpm php-mysql tar wget

COPY 	./conf/ .

RUN		sh ./setdata.sh

RUN		mkdir -p /var/www					\
	&&	mkdir -p /var/www/wordpress

EXPOSE	9000

ENTRYPOINT sh start.sh