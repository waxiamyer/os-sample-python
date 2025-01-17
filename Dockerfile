FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3.6 python3-pip
RUN pip3 install --upgrade --user pip

ENV PYTHONUNBUFFERED 1
RUN mkdir /api
WORKDIR /api
RUN pip3 install flask

ENTRYPOINT FLASK_APP=/api/app.py flask run --host=0.0.0.0 --port=8000
