# !/bin/bash
export $(cat .env | egrep -v "(^#.*|^$)" | xargs)

sed -i -e "s/{DB_NAME}/${DB_NAME}/g" wp-config.php
sed -i -e "s/{USER_NAME_SQL}/${USER_NAME_SQL}/g" wp-config.php
sed -i -e "s/{USER_PSSWD_SQL}/${USER_PSSWD_SQL}/g" wp-config.php
