FROM     neoalienson/nodejs:latest
MAINTAINER neo [at] orz [dot] hk

ENV DEBIAN_FRONTEND=noninteractive \
    ANDROID_HOME=/opt/android-sdk-linux \
    CORDOVA_VERSION=6.0.0 

# Install basics
RUN npm install -g cordova@"$CORDOVA_VERSION" monaca && \
    npm cache clear

RUN mkdir /app
VOLUME /app
WORKDIR /app
EXPOSE 8100 35729
CMD ["/bin/bash"]
