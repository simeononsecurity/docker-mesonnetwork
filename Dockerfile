FROM ubuntu:latest

LABEL org.opencontainers.image.source="https://github.com/simeononsecurity/docker-mesonnetwork"
LABEL org.opencontainers.image.description="Dockerized Meson Network Node with amd64 support"
LABEL org.opencontainers.image.authors="simeononsecurity"

ENV DEBIAN_FRONTEND noninteractive
ENV container docker
ENV TERM=xterm

EXPOSE 443

# Update Packages
RUN apt-get update && apt-get -y full-upgrade -y && apt-get -y install wget curl sudo

#set up sudo user as mesonnetwork install requires sudo
RUN useradd --disabled-password -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

#copy installer script
COPY dockersetup.sh ./

# Specify Node Environment Variables
ENV tarlocation="https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz"
ENV token=""
ENV https_port="443"
ENV cache_size='20'

#fix permissions on node software
RUN sudo chmod +x ./dockersetup.sh && cat ./dockersetup.sh

ENTRYPOINT [ "/bin/bash" ]
CMD ["dockersetup.sh"]