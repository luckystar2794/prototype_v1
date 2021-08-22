FROM python:3.7-slim as production

ENV PYTHONUNBUFFERED = 1
WORKDIR /app/

COPY requirements/prod.txt ./requirements/prod.txt
RUN pip install -r ./requirements/prod.txt

COPY manage.py ./manage.oy
COPY setup.cfg ./setup.cfg
COPY cim_prototype_web ./cim_prototype_web

EXPOSE 8000