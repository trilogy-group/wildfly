FROM alpine:3.4

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin

ENV JAVA_VERSION 8u181
ENV JAVA_ALPINE_VERSION 8.111.14-r0

RUN set -x && \
    apk add --no-cache openjdk8="$JAVA_ALPINE_VERSION" git

WORKDIR /data

CMD tail -f /dev/null
