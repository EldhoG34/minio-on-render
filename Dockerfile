# Use MinIO as the base image
FROM minio/minio

# Install Nginx
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose ports
EXPOSE 80

# Start both Nginx and MinIO
CMD ["/entrypoint.sh"]
