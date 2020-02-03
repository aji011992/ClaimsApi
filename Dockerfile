FROM python:3.7-alpine
MAINTAINER Srikanth, Parthasarathy

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /claimsappapi
WORKDIR /claimsappapi
COPY ./claimsappapi /claimsappapi

RUN adduser -D ajcs
USER ajcs
