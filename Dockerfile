FROM library/httpd:2.4
MAINTAINER Thomas Steinbach

COPY index.html /usr/local/apache2/htdocs
RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/htdocs/conf/httpd.conf

USER www-data
EXPOSE 8080
