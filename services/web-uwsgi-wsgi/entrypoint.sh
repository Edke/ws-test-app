#!/bin/bash

cd /app

exec uwsgi --ini /etc/uwsgi/app.ini \
     "$@"
