#!/bin/bash

set -eu
cd /app/code

mkdir -p /run/paperless /app/data/media/documents/originals /app/data/media/documents/thumbnails /app/data/consume

if [[ ! -f /app/data/.initialized ]]; then
    echo "=> Fresh installation, setting up data directory..."
    cp /app/pkg/paperless.conf.setup /app/data/paperless.conf

    crudini --set /app/data/paperless.conf "" PAPERLESS_URL "${CLOUDRON_APP_ORIGIN}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_REDIS "redis://${CLOUDRON_REDIS_HOST}:${CLOUDRON_REDIS_PORT}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_DBHOST "${CLOUDRON_POSTGRESQL_HOST}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_DBPORT "${CLOUDRON_POSTGRESQL_PORT}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_DBNAME "${CLOUDRON_POSTGRESQL_DATABASE}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_DBUSER "${CLOUDRON_POSTGRESQL_USERNAME}"
    crudini --set /app/data/paperless.conf "" PAPERLESS_DBPASS "${CLOUDRON_POSTGRESQL_PASSWORD}"

    echo "=> Setting initial app secret"
    SECRET=`date +%s|sha256sum|base64|head -c 32`
    crudini --set /app/data/paperless.conf "" PAPERLESS_SECRET_KEY "${SECRET}"

    echo "=> Running initial migration"
    cd /app/code/src && python3 manage.py migrate

    echo "=> Creating initial super user"
    export DJANGO_SUPERUSER_PASSWORD="changeme123"
    cd /app/code/src && python3 manage.py createsuperuser --username admin --email admin@cloudron.local --no-input

    touch /app/data/.initialized
fi

echo "=> Patching paperless.conf"
crudini --set /app/data/paperless.conf "" PAPERLESS_URL "${CLOUDRON_APP_ORIGIN}"
crudini --set /app/data/paperless.conf "" PAPERLESS_REDIS "redis://${CLOUDRON_REDIS_HOST}:${CLOUDRON_REDIS_PORT}"
crudini --set /app/data/paperless.conf "" PAPERLESS_DBHOST "${CLOUDRON_POSTGRESQL_HOST}"
crudini --set /app/data/paperless.conf "" PAPERLESS_DBPORT "${CLOUDRON_POSTGRESQL_PORT}"
crudini --set /app/data/paperless.conf "" PAPERLESS_DBNAME "${CLOUDRON_POSTGRESQL_DATABASE}"
crudini --set /app/data/paperless.conf "" PAPERLESS_DBUSER "${CLOUDRON_POSTGRESQL_USERNAME}"
crudini --set /app/data/paperless.conf "" PAPERLESS_DBPASS "${CLOUDRON_POSTGRESQL_PASSWORD}"

echo "=> Process migrations"
cd /app/code/src && python3 manage.py migrate

echo "=> Ensure permissions"
chown -Rh cloudron:cloudron /app/data

echo "=> Starting supervisor"
exec /usr/bin/supervisord --configuration /etc/supervisor/supervisord.conf --nodaemon -i Paperlessng
