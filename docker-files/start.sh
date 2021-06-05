#! /usr/bin/env sh
set -e

export APP_MODULE=main:app
export GUNICORN_CONF=/gunicorn_conf.py
export WORKER_CLASS="uvicorn.workers.UvicornWorker"

exec gunicorn -k "$WORKER_CLASS" -c "$GUNICORN_CONF" "$APP_MODULE"