#!/bin/bash

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic

gunicorn engine.wsgi -b :8000