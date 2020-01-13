to.install<-c('usethis', 'Rtools', 'learnr', 'devtools', 'tidyverse', 'magrittr', 'lubridate', 'haven', 'rmarkdown', 'datapasta', 'tibble', 'readr', 'foreign', 'dplyr', 'labelled', 'questionr', 'readxl',  'openxlsx', 'knitr', 'jsonlite', 'tidyr', 'DT', 'stringr', 'ggthemes', 'ggbeeswarm', 'glue', 'stringi', 'ggridges', 'viridis', 'scales', 'sf', 'tidycensus', 'tigris', 'censusapi', 'ggmap', 'leaflet', 'httpuv', 'cancensus', 'statcanR', 'cansim', 'valetr', 'weathercan', 'CANSIM2R', 'rcanvec', 'opendatatoronto', 'VancouvR', 'guardianapi', 'GuardianR', 'gapminder', 'broom', 'coefplot', 'cowplot', 'GGally', 'ggrepel', 'gridExtra', 'here', 'interplot', 'margins', 'maps', 'mapproj', 'mapdata', 'MASS', 'quantreg', 'rlang', 'survey', 'srvyr', 'viridisLite')

install.lib<-to.install[!to.install %in% installed.packages()]
for(lib in install.lib) install.packages(lib,dependencies=TRUE) 

#Install from github
devtools::install_github("andrewbtran/muckrakr")
devtools::install_github("AliciaSchep/gglabeller") 
devtools::install_github("kjhealy/socviz") 

library(ggplot2)
var1<-seq(1,100,1)
var2<-seq(1,100,1)

qplot(var1,var2, geom='point', main='if you get this plot, things are working. ')
ggsave('test_plot_1.png')
library(car)
library(magrittr)
var3<-sample(c('A', 'B', 'C'), 100, replace=T)
var4<-Recode(var3, "'A'='Apple'; 'B'='Banana' ; 'C'='Cactus'")
data.frame(var3, var4) %>% 
  ggplot(., aes(x=var4))+geom_bar()+labs(title='IF you get this plot too things are working. ')
ggsve('test_plot_2.png')
