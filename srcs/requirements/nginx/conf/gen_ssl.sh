# !/bin/bash
openssl req -x509 -nodes -days 1 -newkey rsa:2048					        \
		-subj "/C=FR/ST=RHONE_ALPES/L=LYON/O=INCEPTION/CN=tjolivea.42.fr"	\
		-keyout etc/ssl/private/ssl-cert.key						        \
		-out etc/ssl/certs/ssl-cert.crt