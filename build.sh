#!/usr/bin/env sh

set -e

docker build --no-cache  -t "etetin/fastami:latest" --file "./docker-files/Dockerfile" .