FROM python:3.6-alpine

RUN apk update && apk add g++ libffi-dev

RUN pip install devpi-server==4.3.0

VOLUME /data

EXPOSE 3141
ADD run.sh /
CMD /run.sh 
