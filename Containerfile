FROM ucsb/rstudio-base:latest

LABEL maintainer="LSIT Systems <lsitops@ucsb.edu>"

USER root

RUN R -e "install.packages(c('anyflights', 'babynames', 'datasauRus', 'dsbox', 'fontawesome', 'here', 'learnr', 'mosaicData', 'nycflights13', 'nzpullover', 'openintro', 'pairwiseCI', 'palmerpenguins', 'quarto', 'resampledata3', 'rmarkdown', 'skimr', 'Stat2Data', 'tidytuesdayR', 'tidyverse', 'unvotes'), repos = 'https://cloud.r-project.org/', Ncpus = parallel::detectCores())"

RUN R -e "pak::pak(c('jackbmiller/pstat5lsSBI', 'rstudio/gradethis', 'STATS250SBI/stats250sbi', 'quarto-dev/quarto-r', 'rstudio-education/dsbox'), Ncpus = parallel::detectCores())"

USER $NB_USER

