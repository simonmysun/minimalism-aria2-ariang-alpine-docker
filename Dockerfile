FROM alpine:3.20


LABEL maintainer="simonmysun" \
  org.label-schema.name="aria2-ariang" \
  org.label-schema.description="Aria2 + AriaNg on Alpine" \
  org.label-schema.version=$ARIANG_VERSION \
  org.label-schema.url="https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker" \
  org.label-schema.license="" \
  org.label-schema.vcs-url="https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker" \
  org.label-schema.vcs-type="git" \
  org.label-schema.vendor="simonmysun" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache aria2

WORKDIR /aria2/

ARG ARIANG_VERSION=1.3.7

RUN wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}-AllInOne.zip \
  -O ariang.zip \
  && unzip ariang.zip \
  && rm ariang.zip \
  && chmod -R 755 ./

RUN while true ; do nc -l -p 1500 -c 'echo -e "HTTP/1.1 200 OK\n\n $(cat index.html)"'; done &

EXPOSE 6880

ENTRYPOINT ["aria2c"]

CMD ["--conf-path=/aria2/config/aria2.conf"]

