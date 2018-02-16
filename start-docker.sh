#!/bin/sh

echo "<p>Served on host $(hostname)</p>" >> /usr/local/apache2/htdocs/index.html

exec httpd-foreground
