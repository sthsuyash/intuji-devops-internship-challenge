FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copy only necessary files and directories
COPY src/ /usr/share/nginx/html/src
COPY tests/ /usr/share/nginx/html/tests
COPY .gitignore .php_cs.dist composer.json composer.lock /usr/share/nginx/html/

# Remove default Nginx welcome page
RUN rm -rf ./*

EXPOSE 80

# Start Nginx server when container starts
CMD ["nginx", "-g", "daemon off;"]
