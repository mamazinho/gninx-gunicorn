FROM python:3.9.5

WORKDIR /var/www
COPY . .

RUN pip install gunicorn
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install