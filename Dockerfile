FROM python:3.8-slim

ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV TZ=Asia/Shanghai PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install poetry
RUN poetry config virtualenvs.create false

COPY pyproject.toml .
COPY poetry.lock .

RUN poetry install --no-dev --no-interaction

COPY zsdemo ./zsdemo

CMD gunicorn -w 4 -b 0.0.0.0:80 "zsdemo:create_app()"
