#!/bin/sh

chromium-browser --headless=new --remote-debugging-port=9221 "$@" &
socat TCP-LISTEN:9222,fork,reuseaddr TCP:127.0.0.1:9221