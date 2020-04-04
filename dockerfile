FROM python:3.7-alpine

RUN apk add gcc g++ libffi-dev musl-dev libressl-dev unixodbc unixodbc-dev psqlodbc

ADD src /code

RUN cat /code/odbcinst.ini > /etc/odbcinst.ini

WORKDIR /code

RUN ls -ltr

RUN pip install -r dependencies.txt

CMD ["python","WebService.py"]

