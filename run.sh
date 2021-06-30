#!/bin/bash

python manage.py makemigrations
python manage.py migrate

gunicorn engine.wsgi -b :8000