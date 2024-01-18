# Use an official Nginx image as the base image
FROM nginx:latest

# Set the working directory to the default Nginx web root directory
WORKDIR /usr/share/nginx/html

# Copy the HTML page and any other necessary assets to the container
COPY gstar.html .

# Expose the default Nginx port
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]