FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN R -e "install.packages(c('tidyverse', 'openintro', 'anyflights', 'babynames', 'datasauRus', 'datasets', 'here', 'mosaicData', 'nycflights13', 'nzpullover', 'pairwiseCI', 'palmerpenguins', 'resampledata3', 'rmarkdown', 'skimr', 'Stat2Data', 'tidytuesdayR', 'unvotes', 'learnr', 'quatro', 'dsbox'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

RUN R -e "remotes::install_github(c('rstudio/gradethis', 'STATS250SBI/stats250sbi'), Ncpus = parallel:detectCores())"

USER $NB_USER

