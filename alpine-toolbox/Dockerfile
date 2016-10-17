FROM alpine:latest
MAINTAINER neo [at] orz [dot] hk

WORKDIR /workspace

RUN \
  apk --no-cache add curl openssh

COPY docker-entrypoint.sh /

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "/bin/busybox", "sh" ]
	