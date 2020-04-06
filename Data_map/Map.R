# install.packages('cancensus')
# library(cancensus) 
# 
#options(cancensus.api_key='CensusMapper_6233c02eaf983891865dbb05f67ce4fd')
# 
# options(cancensus.cancensus.cache_path="~")
# #Just of the population in mississauga
#census_data <- get_census(dataset='CA16', regions=list(CSD="3521005"), vectors=c(), labels="detailed", geo_format="sf", level='DA')
# 
#library(tidyverse) 
#glimpse(census_data)
# 
#library(ggplot2)
#ggplot(census_data, aes(geometry=geometry))+geom_sf()
#ggplot(census_data, aes(geometry=geometry, fill=Population))+geom_sf()
# 

#looking at the different minority groups in mississauga
install.packages("cancensus")
library(cancensus)
options(cancensus.api_key='CensusMapper_6233c02eaf983891865dbb05f67ce4fd')
options(cancensus.cache_path = "~")
census_data2 <- get_census(dataset='CA16', regions=list(CSD="3521005"), vectors=c("v_CA16_3960","v_CA16_3963","v_CA16_3966","v_CA16_3969","v_CA16_3972","v_CA16_3975","v_CA16_3978","v_CA16_3981","v_CA16_3984","v_CA16_3987","v_CA16_3996"), labels="detailed", geo_format="sf", level='DA')
glimpse(census_data2)
#rename variables
mississauga<-rename(census_data2, "southasian"=`v_CA16_3960: South Asian`,"black"=`v_CA16_3966: Black`,"chinese"=`v_CA16_3963: Chinese`,"filipino"=`v_CA16_3969: Filipino`,"latin american"=`v_CA16_3972: Latin American`,"arab"=`v_CA16_3975: Arab`,"southeast asian"=`v_CA16_3978: Southeast Asian`,"west asian"=`v_CA16_3981: West Asian`,"korean"=`v_CA16_3984: Korean`,"japanese"=`v_CA16_3987: Japanese`,"notavisibleminority"=`v_CA16_3996: Not a visible minority`)
 names(mississauga)                   
                    
ggplot(mississauga, aes(geometry=geometry, fill=arab))+geom_sf()    
ggplot(mississauga, aes(geometry=geometry, fill=chinese))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=black))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=southasian))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=notavisibleminority))+geom_sf()



#gather all ethnicities into one graph and change colours
mississauga2<-gather(mississauga, ethnicity,n,14:24)

#same as above-easier to read
mississauga %>% 
  gather(ethnicity,n,14:24)->mississauga2

#do facet command, this gives me little maps of each ethnicity but change colours
ggplot(mississauga2, aes(geometry=geometry, fill=n))+ geom_sf()+
  facet_wrap(~ethnicity)+
  scale_fill_gradient(low="pink", high="pink4")+
  labs(title ="Different Ethnicities in Mississauga", caption="Cancensus")

#scale_fill_distiller(pallet="purple", aesthetics = 'fill')
  #scale_fill_gradient(low="orchid", high="orchid4")
#add colour with title for aesthetic purposes 
#scale_fill_gradient (low=one colour and high= another colour) or scale_fill_destiller (pallet="blue", aesthetic="fill")

#got below code from r for journalists but no relevant to me, extra work
#install.packages("viridis")
#library(viridis)
#mississauga2 %>% 
  #mutate(pct = 100 * (ethnicity / population)) %>%
  #ggplot(aes(fill = pct, color = pct)) +
  #facet_wrap(~ethnicity) +
  #geom_sf() +
  #coord_sf(crs = 26915) + 
  #scale_fill_viridis(direction=-1) +
  #scale_color_viridis(direction=-1) +
  #theme_void() +
  #theme(panel.grid.major = element_line(colour = 'transparent')) +
  #labs(title="Racial geography of Mississauga, Ontario", caption="Source: Cancensus")

#mississauga2 %>% (this is the code that has chinese filteres as well - didn't use because cant see dif)
#filter(ethnicity=="southasian"| ethnicity=="notavisibleminority"| ethnicity=="black"| ethnicity=="chinese")->mississauga3

#below is the filtering process and remember you need to save at end of each code 
mississauga2 %>% 
  filter(ethnicity=="southasian"| ethnicity=="notavisibleminority"| ethnicity=="black")->mississauga3

#how to make it into a percent 
mississauga3 %>% 
  mutate(percent=(n/Population)*100)->mississauga4

library(car)

#recoded to make the names easy to read 
names(mississauga3)
  mississauga4 %>% mutate(Ethnicities=Recode(ethnicity,"'notavisibleminority'='White';
                                             'black'='Black';'southasian'='South Asian'"))->mississauga5
#proper code to get graph
ggplot(mississauga5, aes(geometry=geometry, fill=percent))+ geom_sf()+
  facet_wrap(~Ethnicities)+
  scale_fill_gradient(low="pink", high="pink4")+
  labs(title ="Different Ethnicities in Mississauga", caption="Cancensus")+
  theme_void()
 

##Below is what simon told you to try out but the code is above
### Try this
##Start with the dataframe
mississauga2 %>% 
  ## form groups of the ethnicities
  group_by(ethnicity) %>% 
  ##Summarize those groups by adding up all the `n` (i.e. how many of those ethnicities there are), remove any missings with na.rm=T
  summarize(total=sum(n, na.rm=T)) %>% 
  ## Arrange in descending order
  arrange(., desc(total))
#mississauga2 %>% 
  #group_by(ethnicity)
#summarize(total=sum(n, na.rm=T)) %>% 
  #arrange(., desc(total))



#what simon told you to do -after doing the graph 
census_data2 <- get_census(dataset='CA16', regions=list(CSD="3521005"), vectors=c("v_CA16_3960","v_CA16_3963","v_CA16_3966","v_CA16_3969","v_CA16_3972","v_CA16_3975","v_CA16_3978","v_CA16_3981","v_CA16_3984","v_CA16_3987","v_CA16_3996"), labels="detailed", geo_format="sf", level='CT')
head(census_data2)
glimpse(census_data2)

#rename variables
mississauga<-rename(census_data2, "southasian"=`v_CA16_3960: South Asian`,"black"=`v_CA16_3966: Black`,"chinese"=`v_CA16_3963: Chinese`,"filipino"=`v_CA16_3969: Filipino`,"latin american"=`v_CA16_3972: Latin American`,"arab"=`v_CA16_3975: Arab`,"southeast asian"=`v_CA16_3978: Southeast Asian`,"west asian"=`v_CA16_3981: West Asian`,"korean"=`v_CA16_3984: Korean`,"japanese"=`v_CA16_3987: Japanese`,"notavisibleminority"=`v_CA16_3996: Not a visible minority`)
names(mississauga)                   

ggplot(mississauga, aes(geometry=geometry, fill=arab))+geom_sf()    
ggplot(mississauga, aes(geometry=geometry, fill=chinese))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=black))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=southasian))+geom_sf()
ggplot(mississauga, aes(geometry=geometry, fill=notavisibleminority))+geom_sf()


names(mississauga)
#gather all ethnicities into one graph and change colours
mississauga2<-gather(mississauga, ethnicity,n,14:24)

#same as above-easier to read

####Somehow downloading census tract data returns one extra column of data so we just need to change the numbers of the ethnicity variables by one.

mississauga %>% 
  gather(ethnicity,n,15:25)->mississauga2

#do facet command, this gives me little maps of each ethnicity but change colours
ggplot(mississauga2, aes(geometry=geometry, fill=n))+ geom_sf()+
  facet_wrap(~ethnicity)+
  scale_fill_gradient(low="pink", high="pink4")+
  labs(title ="Different Ethnicities in Mississauga", caption="Cancensus")

#below is the filtering process and remember you need to save at end of each code 
mississauga2 %>% 
  filter(ethnicity=="southasian"| ethnicity=="notavisibleminority"| ethnicity=="black")->mississauga3

#how to make it into a percent 
mississauga3 %>% 
  mutate(percent=(n/Population)*100)->mississauga4

library(car)

#recoded to make the names easy to read 
names(mississauga3)
mississauga4 %>% mutate(Ethnicities=Recode(ethnicity,"'notavisibleminority'='White';
                                             'black'='Black';'southasian'='South Asian'"))->mississauga5
mississauga5$Ethnicities

#proper code to get graph
ggplot(mississauga5, aes(geometry=geometry, fill=percent))+ geom_sf()+
  facet_wrap(~Ethnicities)+
  scale_fill_gradient(low="pink", high="pink4")+
  labs(title ="Different Ethnicities in Mississauga", caption="Cancensus")+
  theme_void()


