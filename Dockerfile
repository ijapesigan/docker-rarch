FROM archlinux

ADD scripts /usr/src/local/src
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman    \
    cd /usr/src/local/src                                      && \
    chmod 777 setup.sh                                         && \
    ./setup.sh                                                 && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL org.opencontainers.image.source="https://github.com/ijapesigan/docker-rarch" \
      org.opencontainers.image.authors="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
