FROM archlinux

# set time zone
RUN ln -s /usr/share/zoneinfo/UTC /etc/localtime

# set locale
RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen
RUN locale-gen
RUN echo 'LANG=en_US.UTF-8' > /etc/locale.conf

# install packages
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman \
    pacman -Syu --noconfirm --needed                           \
            base                                               \
            base-devel                                         \
            poppler                                            \
            imagemagick                                        \
            wget                                               \
            xz                                                 \
            pandoc                                             \
            git                                                \
            lazygit                                            \
            parallel                                           \
            vim                                                \
            nnn                                                \
            bat                                                \
            gcc-fortran                                        \
            openblas                                           \
            r

# install R packages
# development packages
RUN R -e "install.packages(                                   \
      c(                                                      \
        'covr',                                               \
        'devtools',                                           \
        'ggplot2',                                            \
        'knitr',                                              \
        'lintr',                                              \
        'magick',                                             \
        'microbenchmark',                                     \
        'pdftools',                                           \
        'pkgdown',                                            \
        'ragg',                                               \
        'remotes',                                            \
        'rmarkdown',                                          \
        'rprojroot',                                          \
        'styler',                                             \
        'testthat',                                           \
        'tidyverse',                                          \
        'qpdf'                                                \
      ),                                                      \
      repos = 'https://packagemanager.rstudio.com/all/latest' \
    )"

RUN R -e "remotes::install_github( \
      c(                           \
        'rstudio/tinytex',         \
        'r-lib/cli',               \
        'r-lib/devtools',          \
        'r-hub/rhub'               \
      )                            \
    )"

RUN R -e "tinytex::install_tinytex( \
      bundle = 'TinyTeX-2',         \
      force = TRUE,                 \
      dir = '/opt'                  \
    )"

ENV PATH="/opt/bin/x86_64-linux:${PATH}"

# remove the packages downloaded to image's pacman cache dir.
RUN pacman -Sy --noconfirm pacman-contrib
RUN paccache -r -k0

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <r.jeksterslab@gmail.com>"

# extra metadata
LABEL version="0.9.1"
LABEL description="template_0.9.1 archlinux container."
