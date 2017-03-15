FROM python:3

RUN mkdir /app
EXPOSE 5000

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY . /app

CMD python /app/flask-docker-two.py