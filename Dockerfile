FROM python:3.9-alpine
LABEL maintainer="Yesid Perea"

ENV PYTHONUNBUFFERED="true"

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user



