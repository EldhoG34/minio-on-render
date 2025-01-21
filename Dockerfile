# Use the official MinIO image
FROM minio/minio

# Expose the ports MinIO uses
EXPOSE 9000
EXPOSE 9001

# Run MinIO in server mode
CMD ["server", "/data", "--console-address", ":9001"]
