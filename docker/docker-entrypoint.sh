#!/usr/bin/env sh
set -eu

envsubst '${GEODATA_API_URL} ${GEODATA_MNGMT_URL} ${GEODATA_SWAGGER_URL} ${GEODATA_AUTH_URL}' < /etc/nginx/conf.d/site.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"