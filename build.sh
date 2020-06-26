#!/usr/bin/env sh
R --slave -e 'if (!require("devtools", character.only = TRUE)) {install.packages("devtools", repos="http://cran.us.r-project.org")}' && \
R --slave -e 'devtools::install_deps(".")' && \
R CMD build . && \
R CMD INSTALL tator_0.0.1.tar.gz
