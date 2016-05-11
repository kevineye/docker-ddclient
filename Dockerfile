FROM avastsoftware/alpine-perl
MAINTAINER Kevin Eye <kevineye@gmail.com>

RUN apk add -U curl make perl-io-socket-ssl \
 && cpan JSON::Any \
 && mkdir /usr/local/src \
 && cd /usr/local/src \
 && curl -s http://superb-sea2.dl.sourceforge.net/project/ddclient/ddclient/ddclient-3.8.3.tar.bz2 | tar xjf - \
 && ln -s /usr/local/src/ddclient-3.8.3/ddclient /usr/local/bin \
 && apk del curl make \
 && mkdir /var/cache/ddclient \
 && rm -rf /var/cache/apk/*

ENTRYPOINT []
CMD ["ddclient", "-foreground", "-daemon 1800"]
