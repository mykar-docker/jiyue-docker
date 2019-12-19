FROM python:3.7

WORKDIR /data/app

COPY requirements.txt /data/requirements.txt

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#RUN echo 'Asia/Shanghai' /etc/timezone

RUN pip install update && pip install --no-cache-dir -r /data/requirements.txt

# ENTRYPOINT uwsgi --ini /data/app/uwsgi.ini
