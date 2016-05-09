FROM stilliard/pure-ftpd
MAINTAINER jbrunicardi@gmail.com

RUN usermod -u 80 ftpuser
RUN groupmod -g 80 ftpgroup
RUN usermod -g 80 ftpuser

# startup

EXPOSE 21 50000-50100
