## ----01-introduction-1------------------------------------------------



## ----setup, include=FALSE---------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

library(gapminder)
library(here)
library(tidyverse)

library(socviz)


## ----01-introduction-2, eval = FALSE, echo = TRUE---------------------
## ## To install these packages, change eval = FALSE to eval = TRUE
## ## in the line above. You only need to do this once. Alternatively,
## ## copy the code below and paste it into the Console window.
## 
## my_packages <- c("tidyverse", "broom", "coefplot", "cowplot",
##                  "gapminder", "GGally", "ggrepel", "ggridges", "gridExtra",
##                  "here", "interplot", "margins", "maps", "mapproj",
##                  "mapdata", "MASS", "quantreg", "rlang", "scales",
##                  "survey", "srvyr", "viridis", "viridisLite", "devtools")
## 
## install.packages(my_packages, repos = "http://cran.rstudio.com")
## 
## devtools::install_github("kjhealy/socviz", "rstudio/radix")


## ----look-------------------------------------------------------------
gapminder


## ----01-introduction-3------------------------------------------------
      

