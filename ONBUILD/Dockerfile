FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
# this ONBUILD runs only in a child image, not in this parent image
ONBUILD COPY index.html /usr/share/nginx/html/index.html
CMD [ "nginx", "-g", "daemon off;"]
