FROM alpine:latest
MAINTAINER garethflowers

WORKDIR /var/opt/svn

RUN apk update && \
    apk add subversion

RUN svnadmin create sandbox

VOLUME /var/opt/svn
    
EXPOSE 3690

CMD [ "/usr/bin/svnserve", "--daemon", "--foreground", "--root", "/var/opt/svn" ]
