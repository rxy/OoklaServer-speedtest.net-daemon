FROM debian:stretch-slim

WORKDIR /srv

RUN apt-get update \
        && apt-get install --no-install-recommends -y wget \
        && rm -rf /var/lib/apt/lists/* \
        && wget --no-check-certificate https://install.speedtest.net/ooklaserver/stable/OoklaServer.tgz \
        && apt-get purge -y wget \
        && apt-get autoremove -y \
        && tar xfz OoklaServer.tgz \
        && tar xfz OoklaServer-linux64.tgz \
        && rm -rf *.zip *.tgz \
        && useradd -M -r -s /sbin/nologin ooklaserver \
        && chown ooklaserver:ooklaserver /srv -R \
        && chmod u+x /srv/OoklaServer

USER ooklaserver:ooklaserver

EXPOSE 8080
EXPOSE 5060

CMD /srv/OoklaServer
