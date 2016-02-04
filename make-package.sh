#!/usr/bin/env bash

set -e

rm -f nginx.tmpl

wget https://raw.githubusercontent.com/jwilder/nginx-proxy/1670bccd1737c8cc1be5d7a12d9b0b19c4f395e7/nginx.tmpl

cat nginx.tmpl | sed -e 's/Env.VIRTUAL_HOST/Env.VIRTUAL_HOST_INTERNAL/g' > nginx-internal.tmpl

docker build -t wsrak/nginx-proxy-internal .

docker push wsrak/nginx-proxy-internal
