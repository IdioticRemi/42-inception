FROM debian:buster

RUN		apt-get update -y	\
	&&	apt-get upgrade -y	\
	&&	apt-get install -y nginx wget

COPY 	./conf/ .

RUN     sh ./env_replace.sh     \
    &&  rm -f ./env_replace.sh

RUN		mv ./nginx.conf /etc/nginx/nginx.conf				                                \
	&&	mv ./server.conf /etc/nginx/sites-available/server.conf	                            \
	&&	ln -s /etc/nginx/sites-available/server.conf /etc/nginx/sites-enabled/server.conf   \
    &&  rm -f                                                                               \
            ./nginx.conf                                                                    \
            ./nginx.conf

RUN		sh ./gen_ssl.sh     \
    &&  rm -f ./gen_ssl.sh

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]