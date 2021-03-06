FROM openjdk:alpine

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
			org.label-schema.name="openjdk-alpine-jq" \
			org.label-schema.description="Openjdk Alpine with curl and jq" \
			org.label-schema.url="http://andradaprieto.es" \
			org.label-schema.vcs-ref=$VCS_REF \
			org.label-schema.vcs-url="https://github.com/jandradap/openjdk-alpine-jq" \
			org.label-schema.vendor="Jorge Andrada Prieto" \
			org.label-schema.version=$VERSION \
			org.label-schema.schema-version="1.0" \
			maintainer="Jorge Andrada Prieto <jandradap@gmail.com>" \
			org.label-schema.docker.cmd=""

WORKDIR /root

RUN apk --update --clean-protected --no-cache add \
  openssl \
  bash \
  curl \
  jq \
  py-pip \
  colordiff \
  file \
&& pip install ansi2html
