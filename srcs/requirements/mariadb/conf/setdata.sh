# !/bin/bash
export $(cat .env | egrep -v "(^#.*|^$)" | xargs)

sed -i "s/{ROOT_NAME_SQL}/${ROOT_NAME_SQL}/g" start.sh
sed -i "s/{ROOT_PSSWD_SQL}/${ROOT_PSSWD_SQL}/g" start.sh
sed -i "s/{DB_NAME}/${DB_NAME}/g" start.sh
sed -i "s/{USER_NAME_SQL}/${USER_NAME_SQL}/g" start.sh
sed -i "s/{USER_PSSWD_SQL}/${USER_PSSWD_SQL}/g" start.sh
