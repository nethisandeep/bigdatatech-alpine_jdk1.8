FROM gliderlabs/alpine

MAINTAINER sandeep <bigdatatechcomputing@gmail.com>

RUN apk --no-cache add openjdk8-jre


RUN apk update && apk add bash && apk add bash-doc && apk add bash-completion

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
CMD ["/usr/bin/java", "-version"]
