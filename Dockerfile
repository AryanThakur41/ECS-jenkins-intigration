
FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERD 1

WORKDIR /app

ADD . /app/

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 8000

# RUN  /bin/sh -c python manage.py runserver 


