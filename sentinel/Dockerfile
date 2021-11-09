FROM openjdk:8
LABEL author="bootvue@gmail.com"

ENV TINI_VERSION=v0.19.0
ENV SENTINEL_VERSION=1.8.2
ENV SENTINEL_USERNAME=sentinel
ENV SENTINEL_PASSWORD=123456

WORKDIR /root

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
ADD https://github.com/alibaba/Sentinel/releases/download/${SENTINEL_VERSION}/sentinel-dashboard-${SENTINEL_VERSION}.jar ./sentinel.jar

RUN chmod +x /usr/bin/tini

EXPOSE 8080/tcp

ENTRYPOINT ["tini", "--", "java", "-Dserver.port=8080", "-Dcsp.sentinel.dashboard.server=localhost:8080" ,"-Dproject.name=sentinel-dashboard","-Dsentinel.dashboard.auth.username=${SENTINEL_USERNAME}","-Dsentinel.dashboard.auth.password=${SENTINEL_PASSWORD}","-jar","sentinel.jar"]