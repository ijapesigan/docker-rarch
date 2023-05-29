FROM archlinux

COPY scripts/setup.sh /usr/src/local/setup.sh
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman && \
    chmod 777 /usr/src/local/setup.sh                          && \
    ./usr/src/local/setup.sh                                   && \
    rm -rf /usr/src/local/setup.sh

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <r.jeksterslab@gmail.com>"

# extra metadata
LABEL description="jeksterslab/rarch container."
