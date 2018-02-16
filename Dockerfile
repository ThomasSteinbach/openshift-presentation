FROM library/httpd:2.4
MAINTAINER Thomas Steinbach

COPY start-docker.sh /usr/local/bin/start-docker.sh
COPY index.html /usr/local/apache2/htdocs
RUN sed -i 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf

RUN chgrp -R root /usr/local/apache2/logs \
                  /usr/local/apache2/htdocs/index.html && \
    chmod -R g=u /usr/local/apache2/logs \
                 /usr/local/apache2/htdocs/index.html

USER www-data
EXPOSE 8080

CMD ["/usr/local/bin/start-docker.sh"]
