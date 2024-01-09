FROM nginx:latest

COPY . /usr/share/nginx/html

EXPOSE 80

# set the working directory
WORKDIR /usr/share/nginx/html

# set the entrypoint
ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["nginx", "-g", "daemon off;"]