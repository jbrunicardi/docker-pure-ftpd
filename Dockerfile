FROM stilliard/pure-ftpd
MAINTAINER jbrunicardi@gmail.com

RUN usermod -u 80 ftpuser
RUN groupmod -g 80 ftpgroup
RUN usermod -g 80 ftpuser

# startup
CMD /usr/sbin/pure-ftpd -c 50 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -R -P $PUBLICHOST -p 50000:50100

EXPOSE 21 50000-50100
