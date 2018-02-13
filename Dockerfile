FROM alpine:3.7

RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
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
    # && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    # arping
# apparmor issue #14140
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump

ADD netgen.sh /usr/local/bin/netgen

CMD ["sh"]
