FROM wstestapp-base:latest

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
