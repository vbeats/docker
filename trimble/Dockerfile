FROM centos:8

LABEL author="bootvue@gmail.com"

ENV TINI_VERSION=v0.19.0


WORKDIR /data

ADD x.tar.gz .
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/

RUN chmod +x compress && chmod +x crx2rnx && chmod +x rnx2crx \
    && chmod +x teqc && chmod +x uncompress && chmod +x /usr/bin/tini \
    && rpm -ivh runpkr00-5.40-1trmb.i586.rpm \
    && rm -f runpkr00-5.40-1trmb.i586.rpm && \
    mv compress crx2rnx rnx2crx teqc uncompress /usr/bin/

VOLUME [ "/data" ]

ENTRYPOINT [ "tini","--","tail", "-f", "/dev/null" ]