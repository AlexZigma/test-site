#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Installing the latest version of poetry..."

pip install --upgrade pip

pip install poetry==1.6.1

rm poetry.lock

poetry lock

poetry install

python manage.py collectstatic --no-input
python manage.py migrate