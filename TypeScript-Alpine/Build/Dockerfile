# syntax=docker/dockerfile:1
FROM alpine:3

ARG UID=10000
ARG USER=sonic

WORKDIR /tmp/build-dmg

COPY assets .

RUN apk update && \
    apk upgrade && \
    apk add bash && \
    for ascript in scripts.d/*; do \
        DOCKER_UID=$UID DOCKER_USER=$USER bash ${ascript}; \
    done

ENV LANG=en_US.UTF-8

WORKDIR /home/${USER}
USER ${USER}

EXPOSE 22
VOLUME /home/${USER}

CMD ["/usr/sbin/sshd", "-D"]
