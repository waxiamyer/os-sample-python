FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
RUN pip3 install --upgrade --user pip
RUN pip3 install flask

COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8000
