#!/bin/bash

VERSION="$1"
DB_KIND="$2"
DB_NAME="$3"
DB_USER="$4"
DB_PWORD="$5"
DB_PORT="$6"

PWD=$(pwd)
RESULT=$(composer create-project "laravel/laravel=${VERSION}" "${PWD}")
if [ "$?" != 0 ]; then
  echo "$RESULT"
  exit 1
else
  echo "$RESULT"
fi

chmod 777 -R "$PWD"

sed -i -e s/DB_CONNECTION=mysql/DB_CONNECTION="${DB_KIND}"/ "${PWD}/.env"
sed -i -e s/DB_HOST=127.0.0.1/DB_HOST=db/ "${PWD}/.env"
sed -i -e s/DB_PORT=3306/DB_PORT="${DB_PORT}"/ "${PWD}/.env"
sed -i -e s/DB_DATABASE=homestead/DB_DATABASE="${DB_NAME}"/ "${PWD}/.env"
sed -i -e s/DB_USERNAME=homestead/DB_USERNAME="${DB_USER}"/ "${PWD}/.env"
sed -i -e s/DB_PASSWORD=secret/DB_PASSWORD="${DB_PWORD}"/ "${PWD}/.env"

exit 0