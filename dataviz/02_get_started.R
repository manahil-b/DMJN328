## ----setup, include=FALSE---------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

library(gapminder)
library(here)
library(tidyverse)
library(socviz)


## ----02-get-started-1-------------------------------------------------



## ----02-get-started-2-------------------------------------------------



## ----objects----------------------------------------------------------
c(1, 2, 3, 1, 3, 5, 25)



## ----create_objects---------------------------------------------------
my_numbers <- c(1, 2, 3, 1, 3, 5, 25)

your_numbers <- c(5, 31, 71, 1, 3, 21, 6)


## ----02-get-started-3-------------------------------------------------
my_numbers


## ----02-get-started-4-------------------------------------------------
my_numbers


## ----this_will_error, eval = FALSE------------------------------------
## mean()


## ----02-get-started-5-------------------------------------------------
mean(x = my_numbers)

mean(x = your_numbers)


## ----02-get-started-6-------------------------------------------------
mean(my_numbers)


## ----02-get-started-7-------------------------------------------------
my_summary <- summary(my_numbers)


## ----02-get-started-8-------------------------------------------------
my_summary


## ----output-----------------------------------------------------------

table(my_numbers)

sd(my_numbers)

my_numbers * 5

my_numbers + 1

my_numbers + my_numbers



## ----getclass---------------------------------------------------------
class(my_numbers)
class(my_summary)
class(summary)


## ----02-get-started-9-------------------------------------------------
my_new_vector <- c(my_numbers, "Apple")
my_new_vector
class(my_new_vector)


## ----titanic1---------------------------------------------------------
titanic
class(titanic)


## ----titanic2---------------------------------------------------------
titanic$percent


## ----titanic3---------------------------------------------------------
titanic_tb <- as_tibble(titanic)
titanic_tb


## ----str--------------------------------------------------------------

str(my_numbers)
str(my_summary)



## ----02-get-started-10, echo=TRUE, eval=FALSE-------------------------
## ggplot(data = mpg, aes(x = displ, y = hwy)) +
##     geom_point()


## ----02-get-started-11, echo=TRUE, eval=FALSE-------------------------
## ggplot(data = mpg, aes(x = displ, y = hwy))
## + geom_point()


## ----02-get-started-12, echo = TRUE, eval = FALSE---------------------
## 
## url <- "https://cdn.rawgit.com/kjhealy/viz-organdata/master/organdonation.csv"
## 
## organs <- read_csv(file = url)


## ----02-get-started-13------------------------------------------------

organs <- read_csv(file = "data/organdonation.csv")


organs


## ----gapminder-example-1----------------------------------------------
gapminder


## ----first_plot, fig.height=6, fig.width=10, fig.cap="Life expectancy plotted against GDP per capita for a large number of country-years."----

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point()


