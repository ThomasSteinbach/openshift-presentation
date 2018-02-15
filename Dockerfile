FROM httpd:2.4
MAINTAINER Thomas Steinbach

COPY index.html /usr/local/apache2/htdocs

USER www-data
