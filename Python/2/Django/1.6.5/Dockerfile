FROM ggmartinez/python:2-debugpy

WORKDIR /app
CMD pip install --user -r requirements.txt && python manage.py syncdb && python manage.py runserver 0.0.0.0:8000