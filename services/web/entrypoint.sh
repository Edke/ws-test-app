#!/bin/bash

cd /app

python2 manage.py migrate
python2 manage.py runserver 0.0.0.0:8000
