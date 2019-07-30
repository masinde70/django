#pull base image

FROM python:3.7-slim

# Set environment variables

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory

WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip3 install pipenv && pipenv install --system

# Copy project

COPY . /code/