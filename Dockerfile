# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Half-Life
# Minimum Panel Version: 0.6.0
# ----------------------------------

FROM debian:10

MAINTAINER darknet, <magnummvm@gmail.com>

RUN apt update \
	 && apt-get upgrade -y \
     && apt -y install lib32gcc1 screen wget \
     && useradd -m -d /home/container container


USER container
ENV HOME /home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]