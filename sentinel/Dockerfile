FROM openjdk:8
LABEL author="bootvue@gmail.com"

ENV TINI_VERSION=v0.19.0
ENV SENTINEL_VERSION=1.8.2
ENV SENTINEL_USERNAME=sentinel
ENV SENTINEL_PASSWORD=123456

WORKDIR /root

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
ADD https://github.com/alibaba/Sentinel/releases/download/${SENTINEL_VERSION}/sentinel-dashboard-${SENTINEL_VERSION}.jar ./sentinel.jar

COPY docker-entrypoint.sh /usr/bin

RUN chmod +x /usr/bin/tini && chmod +x /usr/bin/docker-entrypoint.sh

EXPOSE 8080/tcp

ENTRYPOINT ["tini", "--", "docker-entrypoint.sh"]