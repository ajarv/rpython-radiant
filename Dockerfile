FROM datascienceschool/rpython

MAINTAINER "Ajar Vashisth" ajarv@hotmail.com

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  ed \
  curl \
  apt-utils \
  && R -e "source('https://bioconductor.org/biocLite.R')" \
  && R -e "install.packages('radiant', repos = 'https://radiant-rstats.github.io/minicran/')" \
  && install2.r --error \
    --deps TRUE \
    tidyverse \ 
    dplyr \
    ggplot2 \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools	
    