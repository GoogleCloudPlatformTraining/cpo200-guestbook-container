FROM google/debian:wheezy
MAINTAINER Sharif Salah <sharif.salah+docker@gmail.com>

RUN apt-get update && \
    apt-get install -y python-dev python-pip python-mysqldb && \
    pip install flask

ADD app /app

EXPOSE 80

CMD [ "python", "/app/app.py" ]


