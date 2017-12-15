FROM kontena/lb:1.1.1

COPY /files /app/
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

#CMD ["haproxy", "-db", "-W", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]

#RUN apk add --no-cache tini
# Tini is now available at /sbin/tini
#ENTRYPOINT ["/sbin/tini", "--"]
