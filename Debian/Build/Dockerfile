# syntax=docker/dockerfile:1
FROM debian:11-slim

ARG UID=10000
ARG USER=sonic

WORKDIR /tmp/build-dmg

COPY assets .

RUN apt update && \
    apt upgrade -y && \
    for ascript in scripts.d/*; do \
        DOCKER_UID=$UID DOCKER_USER=$USER bash ${ascript}; \
    done

ENV LANG=en_CA.UTF-8

WORKDIR /home/${USER}
USER ${USER}

EXPOSE 22
VOLUME /home/${USER}

CMD ["/usr/sbin/sshd", "-D"]
