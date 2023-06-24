FROM archlinux

ADD tools /usr/src/local/src
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman    \
    cd /usr/src/local/src                                      && \
    chmod 777 setup.sh                                         && \
    ./setup.sh                                                 && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL author="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
LABEL description="ijapesigan/rarch container."
