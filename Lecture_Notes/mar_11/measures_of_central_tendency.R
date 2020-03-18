
library(tidyverse)
library(haven)
lfs<-read_sav('https://github.com/sjkiss/DMJN328/raw/master/Lecture_Notes/mar_11/data/lfs.sav')
library(labelled)
look_for(lfs, "hours")
lfs %>% 
  ggplot(., aes(x=AHRSMAIN))+geom_histogram()
#REad in the lfs data
lfs<-read.csv('https://github.com/sjkiss/DMJN328/raw/master/Lecture_Notes/mar_11/data/lfs.csv', stringsAsFactors = F)

#use the technical documentation to find the variable names for sex and earnings. 
lfs %>% 
  #select te two variables
  select(, ) %>% 
  #Calculate the average hourly wage and the median 
  group_by() %>% 
  summarize(avg=, median=)

#Use the technical documentation to find the variable label for education 
#What is the modal level of education. Use the table() command. 



