FROM quay.io/jjordana27/httpd

EXPOSE 80

RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf 
RUN sed -i "s/#ServerName www.example.com:80/ServerName 0.0.0.0:8080/g" \
    /etc/httpd/conf/httpd.conf
