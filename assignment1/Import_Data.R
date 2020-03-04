#import my data 
getwd()
crime<-read.csv("Data/crime.csv") 
crime
library(tidyverse)
names(crime)
crime %>% 
  select(REF_DATE, GEO, VALUE, Violations, Statistics) ->crime2
  View()
table(crime$Violations)

crime2 %>% 
  filter(Violations=="Total cocaine, trafficking, production or distribution [430]") ->crime3
table(crime3$GEO)
#the | equals OR
crime3 %>% 
filter(GEO=="Alberta [48]" | GEO=="Saskatchewan [47]")

#load the data and pipe
crime3 %>% 
  #filter using str_detect()
  filter(str_detect(GEO, "Alberta"))

crime3 %>% 
  filter(GEO=="Canada")->canada 

head(canada)
#figure out the spread command and use that to filter value (per 100,000 and actual incident)
names(canada2)
canada %>% spread(key = Statistics, value = VALUE)->canada2

#renamed variables 

canada2 %>% rename(rate=`Rate per 100,000 population`,
                   date='REF_DATE') ->canada2
canada2$date2<-as.Date(as.character(canada2$date),"%Y")
  names(canada2) 

  canada2$date
#base plot
ggplot(canada2,
  aes(x=date2, y=rate)) +
  geom_bar(stat="identity")+
  scale_x_date()
  
## extra plotggplot(canada2,) figure out the scale and date 
aes(x=date2, y=rate)+
  geom_bar(stat="identity")+
  scale_x_date()

#add for financial crisis a big red line at 2008 using abline code)
ggplot(canada2,
  aes(x=date2, y=rate)) +
  geom_bar(stat="identity")+
  geom_abline(intercept=2008,col="red")
 

summary(canada2)

canada2$date2<-as.Date(as.character(canada2$date),"%Y")
as.numeric(canada2$date)
#most proper code below to get graph 
ggplot(canada2,
       aes(x=date2, y=rate)) +
  geom_bar(stat ="identity", position = "dodge", fill="plum1", col="paleturquoise1")+ 
  theme_bw() + 
  theme(panel.border = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"))+
  geom_vline(xintercept=as.Date("2008-01-01"), col="deeppink", lty = 7, lwd = 4)+
  labs(title = "Total rate per 100,000 of cocaine trafficking, production and distribution in Canada", x="Date (1998-2018)", y="Rate per 100,000", caption = "Statistics Canada") 

#attempted code for verticle line 
geom_vline(xintercept= 2008, col="red", lty = 5, lwd = 3)+
#labelling the graph formula 
labs(title = "Total rate per 100,000 of cocaine trafficking, production and distribution in Canada", x="Date (1998-2018)", y="Rate per 100,000", caption = "Statistics Canada") 

#change the colour of the graph, figure formula out and put red line in as well (put the as.date to plot on date)
geom_vline(xintercept=as.Date("2008-01-01"), col="deeppink", lty = 7, lwd = 4)+

#Finish the provinces, use the OR 
table(crime3$Violations)
crime3 %>% filter(GEO=="Brantford, Ontario [35543]") ->brantford
View(brantford)


#labs(title = "fancy title", x="...", y="...", caption=
#add title, source, capitalize title, 
