# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx page
RUN rm /usr/share/nginx/html/*

# Copy your HTML and assets into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
