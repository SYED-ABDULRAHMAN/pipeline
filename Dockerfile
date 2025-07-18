# Use the official Nginx image as a base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy our HTML file and any assets (CSS, images, etc.)
COPY index.html ./

# Copy any additional assets if they exist
# COPY ./assets ./assets

# Expose port 80 for web traffic
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
