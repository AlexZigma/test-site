#!/usr/bin/env bash
# exit on error
set -o errexit

# echo "Installing the latest version of poetry..."

# pip install --upgrade pip

# pip install poetry==1.6.1

# rm poetry.lock

# poetry lock

poetry install

python manage.py collectstatic --no-input
python manage.py migrate

export DJANGO_SUPERUSER_EMAIL=test@test.com
export DJANGO_SUPERUSER_PASSWORD=admin
export DJANGO_SUPERUSER_USERNAME=admin
python manage.py createsuperuser --no-input


python manage.py createsuperuser