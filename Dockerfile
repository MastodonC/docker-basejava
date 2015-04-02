FROM mastodonc/base

MAINTAINER Neale Swinnerton <neale@mastodonc.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qq -y openjdk-7-jre-headless && \
    DEBIAN_FRONTEND=noninteractive apt-get clean -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get autoclean -qq

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
