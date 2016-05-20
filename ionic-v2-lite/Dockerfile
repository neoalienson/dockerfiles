FROM     ubuntu:14.04.4
MAINTAINER neo [at] orz [dot] hk

ENV DEBIAN_FRONTEND=noninteractive \
    ANDROID_HOME=/opt/android-sdk-linux \
    NODE_VERSION=5.6.0 \
    NPM_VERSION=3.7.4 \
    BOWER_VERSION=1.7.7 \
    CORDOVA_VERSION=6.0.0 \
    GRUNT_VERSION=0.1.13 \
    GULP_VERSION=3.9.1
#    IONIC_VERSION=1.7.14 \

# Install basics
RUN apt-get update &&  \
    apt-get install -y git wget curl unzip ruby && \
    curl --retry 3 -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" && \
    tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 && \
    rm "node-v$NODE_VERSION-linux-x64.tar.gz" && \
    npm install -g npm@"$NPM_VERSION" && \
    npm install -g grunt-cli@"$GRUNT_VERSION" bower@"$BOWER_VERSION" && \
    npm install -g cordova@"$CORDOVA_VERSION" ionic@"$IONIC_VERSION" gulp@"$GULP_VERSION" && \
    npm cache clear && \
    gem install sass && \
    ionic start myApp sidemenu --v2 && \

WORKDIR myApp
EXPOSE 8100 35729
CMD ["ionic", "serve"]