#read in data
dat<-read.csv(file="Fake_Data/statcan.csv")
library(tidyverse)
dat %>% 
  filter(GEO=="Canada") %>% 
  filter(Aboriginal.group=="Aboriginal population") %>% 
  filter(Labour.force.characteristics=="Unemployment") %>% 
  select(Aboriginal.group, Labour.force.characteristics)
  View()

table(dat$Aboriginal.group)
