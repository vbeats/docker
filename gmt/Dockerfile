FROM fedora:34

LABEL author="bootvue@gmail.com"

WORKDIR /data

ADD x.tar.gz ./

RUN mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup \
    && mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup \
    && curl -o /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo \
    && curl -o /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo \
    && yum makecache \
    && dnf update -y && dnf install -y dnf-plugins-core \
    && dnf copr enable genericmappingtools/gmt -y && dnf install gmt gdal GraphicsMagick -y \
    && dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-34.noarch.rpm -y \
    && dnf install ffmpeg texlive-kpathsea-bin -y && perl cjk-gs-integrate.pl --remove \
    && mkdir -p /usr/share/fonts/winfonts && cp simfang.ttf  simhei.ttf  simkai.ttf  simsun.ttc /usr/share/fonts/winfonts \
    && mkdir ~/.gmt && cp PSL_custom_fonts.txt ~/.gmt \
    && perl cjk-gs-integrate.pl && rm -f ./* \
    && dnf clean packages -y

VOLUME [ "/data" ]

ENTRYPOINT [ "tail","-f","/dev/null" ]