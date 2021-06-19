FROM centos:latest
yum install -y httpd \
zip \
unzip
ADD index.html /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", ".D", "FOREGROUND"]
EXPOSE 80
