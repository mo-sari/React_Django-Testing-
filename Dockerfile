FROM python:3.11

ENV PYTHONUNBUFFERED=1
# By setting PYTHONUNBUFFERED=1, all logs (including Django logs) are printed immediately to the console without being buffered. This is particularly useful when running a Django application inside a Docker container, as you want to see logs in real-time for debugging and monitoring purposes.
WORKDIR /django

COPY requirements.txt requirements.txt

RUN  pip install -r requirements.txt
