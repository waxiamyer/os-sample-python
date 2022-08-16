FROM centos:7
RUN pip install flask
COPY app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8000