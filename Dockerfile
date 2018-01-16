FROM python:2

WORKDIR /app
COPY . /app
RUN /app/docker-build.sh

CMD orlo
