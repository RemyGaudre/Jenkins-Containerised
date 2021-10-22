# syntax=docker/dockerfile:1
FROM jenkins/jenkins:latest
USER root
# Edit graalvm version following the file you downloaded
ENV GRAALVM_VERSION 21.3.0
ENV GRAALVM_FOLDER graalvm-ce-java11-linux-amd64-$GRAALVM_VERSION
ENV GRAALVM_FILENAME $GRAALVM_FOLDER.tar.gz
RUN apt-get update \
  && apt-get install -y wget
RUN wget -qO- https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$GRAALVM_VERSION/$GRAALVM_FILENAME | tar -xvz
ENV GRAALVM_HOME /$GRAALVM_FOLDER
ENV JAVA_HOME $GRAALVM_HOME
ENV PATH $GRAALVM_HOME/bin:$JAVA_HOME:$PATH