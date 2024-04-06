FROM quay.io/jupyter/minimal-notebook:python-3.11

USER root

RUN apt-get update -y

WORKDIR /app/

RUN apt-get install graphviz -y

COPY requirements.txt /app/

RUN python3 -m pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir -r requirements.txt

EXPOSE 8888