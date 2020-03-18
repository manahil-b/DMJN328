#install.packages("cancensus")
library(cancensus)

#file.edit(file.path("~/.Rprofile"))

options(cancensus.api_key='CensusMapper_287500bb91a374ec69fdcf270fb20ff7')

kitchener <- 
  get_census(dataset='CA16', 
             regions=list(CSD="3530013"), 
             vectors=c(), 
             labels="detailed", 
             geo_format="sf", 
             level='DA')

library(tidyverse)
#map 1
ggplot(kitchener, aes(geometry=geometry))+geom_sf()

#map2
ggplot(kitchener, aes(geometry=geometry, fill=Population))+geom_sf()

#map3 
kitchener2 <- get_census(dataset='CA16', 
                         regions=list(CSD="3530013"), 
                         vectors=c("v_CA16_7"), 
                         labels="detailed", 
                         geo_format="sf", 
                         level='DA')

glimpse(kitchener2)

#use rename() command 
out<-rename(kitchener2, "Toddlers"=`v_CA16_7: 0 to 4 years`)

kitchener2 %>% 
  rename("Toddlers"=`v_CA16_7: 0 to 4 years`)-> kitchener3

#map3
ggplot(kitchener3, aes(geometry=geometry, fill=Toddlers))+geom_sf()

## Calculate percent
kitchener3 %>% 
  mutate(pct=(Toddlers/Population)*100)->kitchener4

ggplot(kitchener4, aes(geometry=geometry, fill=pct))+geom_sf()


#break out by sex

#map3 
kitchener6 <- get_census(dataset='CA16', 
                         regions=list(CSD="3530013"), 
                         vectors=c("v_CA16_8", "v_CA16_9"), 
                         labels="detailed", 
                         geo_format="sf", 
                         level='DA')


names(kitchener6)
kitchener6 %>% 
  rename("males"=14, "females"=15)->kitchener7

kitchener7 %>% 
  gather(Sex, n, males, females)-> kitchener8

ggplot(kitchener8, aes(geometry=geometry, fill=n))+facet_wrap(~Sex)+geom_sf()
