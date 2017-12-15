#!/bin/bash

cd /app

python2 manage.py migrate
exec uwsgi --ini /etc/uwsgi/app.ini \
     "$@"
