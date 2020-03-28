FROM python:3.7-alpine

ADD src /code

WORKDIR /code

RUN pip install -r dependencies.txt

CMD ["python","WebService.py"]

