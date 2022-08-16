FROM python:3

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir nibabel pydicom matplotlib pillow && \
    pip install --no-cache-dir med2image
RUN pip install flask
COPY app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8000

FROM python:3

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir nibabel pydicom matplotlib pillow && \
    pip install --no-cache-dir med2image

CMD ["cat", "/etc/os-release"]