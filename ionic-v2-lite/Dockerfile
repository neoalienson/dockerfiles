FROM     neoalienson/nodejs:latest
MAINTAINER neo [at] orz [dot] hk

ENV DEBIAN_FRONTEND=noninteractive \
    ANDROID_HOME=/opt/android-sdk-linux \
    CORDOVA_VERSION=6.0.0 
#    IONIC_VERSION=1.7.14 \

# Install basics
RUN npm install -g cordova@"$CORDOVA_VERSION" ionic@"$IONIC_VERSION" && \
    npm cache clear && \
    gem install sass && \
    ionic start myApp sidemenu --v2

WORKDIR myApp
EXPOSE 8100 35729
CMD ["ionic", "serve"]