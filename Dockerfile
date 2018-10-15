FROM elifarley/docker-alpine-glibc
MAINTAINER Elifarley <elifarley@gmail.com>
ENV BASE_IMAGE=elifarley/docker-alpine-glibc

ARG JAVA_VERSION=11
ARG JAVA_UPDATE=28
#ARG JAVA_BUILD=

RUN apk --update add ca-certificates curl && \
  curl -fsSL https://raw.githubusercontent.com/elifarley/cross-installer/master/install.sh | sh && \
  xinstall save-image-info && \
  xinstall add jdk-8-nodesktop && \
  xinstall cleanup && \
  xinstall meta remove
