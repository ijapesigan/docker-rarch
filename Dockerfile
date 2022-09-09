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
            wget                                               \
            xz                                                 \
            pandoc                                             \
            git                                                \
            parallel                                           \
            vim                                                \
            gcc-fortran                                        \
            openblas                                           \
            r                                                  \
            texlive-most                                       \
            texlive-core                                       \
            texlive-latexextra                                 \
            texlive-bibtexextra                                \
            texlive-fontsextra                                 \
            biber

# install R packages
# development packages
RUN R -e "install.packages(                                   \
      c(                                                      \
        'covr',                                               \
        'devtools',                                           \
        'ggplot2',                                            \
        'knitr',                                              \
        'lintr',                                              \
        'microbenchmark',                                     \
        'pkgdown',                                            \
        'remotes',                                            \
        'rmarkdown',                                          \
        'rprojroot',                                          \
        'styler',                                             \
        'testthat',                                           \
        'tidyverse'                                           \
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

# remove the packages downloaded to image's pacman cache dir.
RUN pacman -Sy --noconfirm pacman-contrib
RUN paccache -r -k0

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <r.jeksterslab@gmail.com>"

# extra metadata
LABEL version="0.9.1"
LABEL description="template_0.9.1 archlinux container."
