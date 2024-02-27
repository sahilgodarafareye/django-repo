FROM python:3.8

WORKDIR /app

COPY requirements.txt /app/

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080 

CMD ["python","manage.py", "runserver", "0.0.0.0:8080"]
