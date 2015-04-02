FROM mastodonc/base

MAINTAINER Neale Swinnerton <neale@mastodonc.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q openjdk-7-jre-headless && \
    DEBIAN_FRONTEND=noninteractive apt-get clean && \
    DEBIAN_FRONTEND=noninteractive apt-get autoclean

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
