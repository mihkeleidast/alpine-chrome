#!/bin/sh -e

echo "# Common test"
docker container run --rm --entrypoint '' ${IMAGE_NAME:-mihkeleidast/alpine-chrome} cat /etc/alpine-release
docker container run --rm --entrypoint '' ${IMAGE_NAME:-mihkeleidast/alpine-chrome} chromium-browser --version
