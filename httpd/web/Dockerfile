FROM httpd:2.4

COPY ./ssl/server.key /usr/local/apache2/conf/
COPY ./ssl/server.crt /usr/local/apache2/conf/
#COPY ./htpasswd /usr/local/apache2/conf/.htpasswd
COPY ./htdigest /usr/local/apache2/conf/.htdigest

#RUN sed -i \
#        -e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
#        -e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
#        -e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
#        conf/httpd.conf

#RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/test.html
