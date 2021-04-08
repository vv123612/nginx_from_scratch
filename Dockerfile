FROM ubuntu


RUN apt-get update \
&& apt-get install -y curl nginx \
&& apt-get install -y mc\
&& echo 111


EXPOSE 80
EXPOSE 8080

COPY my.html /var/www/html


RUN nginx

# CMD  ["nginx"]
# CMD  ["bash"]
# https://github.com/nginxinc/docker-nginx/blob/0f300ed4ae80724c569c9694bf89014e96ab567b/mainline/debian/Dockerfile
# coping from github of official nginx image
CMD ["nginx", "-g", "daemon off;"]