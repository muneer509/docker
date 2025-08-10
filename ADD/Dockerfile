FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
ADD https://raw.githubusercontent.com/muneer509/docker/refs/heads/main/CMD/Dockerfile /usr/share/nginx/html/index.html
CMD [ "nginx", "-g", "daemon off" ]
ENV url="mxyz.shop"