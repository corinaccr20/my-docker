FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y nginx
RUN echo "Hello from Docker!" > /var/www/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
