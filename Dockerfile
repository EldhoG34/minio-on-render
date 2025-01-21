# Base image for MinIO
FROM minio/minio as minio

# Base image for Nginx
FROM nginx:latest as nginx

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx and MinIO
CMD ["/entrypoint.sh"]
