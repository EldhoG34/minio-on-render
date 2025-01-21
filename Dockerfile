# Step 1: Base image for MinIO
FROM minio/minio as minio

# Step 2: Base image for Nginx
FROM nginx:latest as nginx

# Step 3: Copy Nginx configuration to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Step 4: Expose port 80 for Nginx
EXPOSE 80

# Step 5: Create entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Step 6: Start Nginx and MinIO when the container runs
CMD ["/entrypoint.sh"]
