#!/bin/bash

python manage.py makemigrations --noinput
python manage.py makemigrations core --noinput
python manage.py migrate --noinput
