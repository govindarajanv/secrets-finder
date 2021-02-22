FROM python:3

COPY secretScanner /secretScanner

RUN chmod 755 /secretScanner

ENTRYPOINT ["/secretScanner"]
