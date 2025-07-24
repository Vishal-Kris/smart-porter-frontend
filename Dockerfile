FROM nginx:alpine

# Remove default site content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files
COPY docs/ /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose correct port
EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
