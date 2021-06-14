FROM python:3.9-alpine3.13

RUN apk add --no-cache --virtual .build-deps gcc libc-dev make \
    && pip install --no-cache-dir "uvicorn[standard]" gunicorn fastapi \
    && apk del .build-deps gcc libc-dev make

COPY /docker-files/gunicorn_conf.py /gunicorn_conf.py

COPY /docker-files/start.sh /start.sh
RUN chmod +x /start.sh

COPY /app /app
WORKDIR /app

EXPOSE 80

CMD /start.sh