FROM alpine:3.9

RUN set -ex \
    && apk update \
    && apk add --no-cache \
    tcpdump \
    bridge-utils \
    netcat-openbsd \
    util-linux \
    net-tools \
    mtr \
    iptables \
    iputils \
    iproute2 \
    iftop \
    drill \
    apache2-utils \
    strace \
    curl \
    ethtool \
    ipvsadm \
    ngrep \
    iperf \
    nmap \
    nmap-nping \
    conntrack-tools \
    socat \
    && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    hping3

ADD netgen.sh /usr/local/bin/netgen

CMD ["sh"]
