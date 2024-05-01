#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 2frB8MFnMZNi99rXGq51QdY68v1_5qeT4npzALmWXiD6CYuXZ
ngrok authtoken 2frB8MFnMZNi99rXGq51QdY68v1_5qeT4npzALmWXiD6CYuXZ
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
