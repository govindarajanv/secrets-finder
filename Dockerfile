FROM alpine:3.12.0

RUN apk add bash
RUN apk add grep

COPY secretScanner /secretScanner

ENTRYPOINT ["/secretScanner"]
