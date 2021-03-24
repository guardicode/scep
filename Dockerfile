FROM alpine:3

RUN apk add --update build-base
RUN make docker

COPY ./scepclient-linux-amd64 /usr/bin/scepclient
COPY ./scepserver-linux-amd64 /usr/bin/scepserver

EXPOSE 8080

ENTRYPOINT ["scepserver"]
