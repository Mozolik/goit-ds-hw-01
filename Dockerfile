# Dockerfile

FROM python:3.12-slim

RUN pip install --no-cache-dir poetry

WORKDIR /app

COPY pyproject.toml poetry.lock* /app/
COPY . /app

RUN poetry install --no-root

WORKDIR /app

CMD ["poetry", "run", "python", "module_8_1.py"]