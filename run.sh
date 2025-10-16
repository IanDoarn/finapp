#!/bin/bash
deactivate
source .venv/bin/activate
uv add -r requirements.txt
uv run my_first_django_project/manage.py migrate
uv run my_first_django_project/manage.py runserver
