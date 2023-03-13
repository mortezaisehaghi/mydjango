FROM python:3

RUN apt-get update

WORKDIR /usr/src/app

COPY . .

EXPOSE 8000

WORKDIR /usr/src/app

RUN apt-get update
RUN pip install -r requirements.txt
RUN pip install --upgrade pip setuptools wheel

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


