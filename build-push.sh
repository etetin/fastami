#!/usr/bin/env sh

set -e

sh ./build.sh
docker push etetin/fastami:latest