FROM python:3

RUN apk add bash
RUN apk add grep

COPY secretScanner /secretScanner
RUN chmod 755 /secretScanner

ENTRYPOINT ["/secretScanner"]
