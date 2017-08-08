#!/bin/sh


if [ -z "$(ls -A /data)" ] ; then
  devpi-server --serverdir /data --init
fi

exec devpi-server --host 0.0.0.0 --port 3141 --serverdir /data
