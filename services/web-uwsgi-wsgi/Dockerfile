FROM wstestapp-base:latest

COPY entrypoint.sh /
COPY app.ini /etc/uwsgi/

RUN chmod u+x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
