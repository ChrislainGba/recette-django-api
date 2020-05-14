FROM python:3.7-alphine
MAINTAINER XlL1 App Developper SARL

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /app 
WORKDIR /app
COPY ./app /app
RUN adduser -D minpik
USER minpik