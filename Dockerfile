FROM stilliard/pure-ftpd
MAINTAINER jbrunicardi@gmail.com

RUN sudo usermod -u 80 ftpuser && \
    sudo groupmod -g 80 ftpgroup && \
    sudo usermod -g 80 ftpuser

# startup
CMD /usr/sbin/pure-ftpd -c 50 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -R -P $PUBLICHOST -p 50000:50100

EXPOSE 21 20 50000-50100
