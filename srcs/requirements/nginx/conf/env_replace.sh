# !/bin/bash
export $(cat .env | egrep -v "(^#.*|^$)" | xargs)

sed -i "s/{DOMAIN}/${DOMAIN}/g" server.conf

rm -f .env