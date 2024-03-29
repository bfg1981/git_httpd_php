FROM therealbfg/git_httpd

#This is adaptation to our special needs
#RUN apk --no-cache add apache-mod-fcgid perl-date-format perl-yaml-xs
#RUN apk --no-cache add apache2-proxy
RUN apk --no-cache add apache2-proxy php81-fpm
COPY conf/*.conf /etc/apache2/conf.d/
COPY entrypoint /entrypoint
