#!/bin/bash

# Start Nginx in the background
nginx

# Start MinIO server
exec /usr/bin/minio server /data --console-address ":9001"
