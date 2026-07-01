9/44
#Generate 100 points between 0 and 1
x= seq(0,1, by = 1/100)
x

scores = c(40,39,15,6,18,22,30,21,15,23) #?c()
scores
#everything is stored as a vector

meancomputation = (40+ 39+ 15+ 6+ 18+ 22+ 30+ 21+ 15+ 23)/10
meancomputation
meaninbuilt = mean(scores)
meaninbuilt

#R slicing- Changing one element of Scores
scores
scores2= scores # create a copy
scores2
scores[c(1,3,5)] #vector positioning
upscores= scores+5
upscores
Eupscores= exp(scores)
Eupscores

#whatif add c(1,1,1,1,1,1,1,1,1,1)
scores = scores+ c(1,1,1,1,1,1,1,1,1,1)
scores

#Logical Operator
y = which(scores== 30)
y
z= which(scores >= 30)
z

x= 1:100
x
x[x<10 | x>90]
x

data() #shows the datasets
?airquality #help
airquality #shows us all the entries
head(airquality) #shows the first 6 entries, also tail() -> last 6
head(airquality, n=10) #provides first 10 entries
airquality[148, 4]
airquality$Temp[148]
airquality[148,]
airquality[148]
summary(airquality$Temp) #Gives out the summary
hist(airquality$Temp) #Draws a histogram
plot(airquality$Temp) #Plots the graph
plot(airquality$Ozone, airquality$Temp) #scatter plot for 2 variables
plot(airquality) #plots everything

#External packages
install.packages("UsingR")
library(UsingR)
install.packages("tidyverse")
library(tidyverse)
library(viridis)
mpg #?mpg


##GG plot- Grammar Graphics
ggplot(data=mpg) +
   geom_point(mapping= aes(x= displ, y= hwy))
#ggplot- Creates a coordinate system {ggplot()- seta a blank screen}
#ggplot(data= mpg)- uses dtataset mpg
#inside ggplot, first specify a mapping {aes- aesthetics}
#axis contains variables {displ- displacement, hwy- highway}
ggplot(data=mpg) +
  geom_point(mapping= aes(x= displ, y= hwy, colour= class))
#we added the third dimension in a 2 dimensional graph
#colourblind people can't see this
ggplot(data=mpg) +
  geom_point(mapping= aes(x= displ, y= hwy, colour= class)) +
  scale_colour_viridis_d()
#Viridis shades enough to create a contrast for them
ggplot(data=mpg) +
  geom_point(mapping= aes(x= displ, y= hwy)) +
  facet_wrap(~ class, nrow= 2)
ggplot(data=mpg) +
  geom_point(mapping= aes(x= displ, y= hwy, colour= class)) +
  scale_color_viridis_d(option= "plasma") +
  facet_wrap(~ class, nrow= 2)
#facet_wrap 
#geom can be used in various ways, like geom_bar, geom_smooth, 
ggplot(data= mpg) +
  geom_bar(mapping= aes(x= class))
#stat_count works similarly as geom_bar, but better
table= as.data.frame(table(mpg$class))
table #handmade a table {not trusting ggplot}

ggplot(data= table) +
  geom_bar(mapping= aes(x= Var1, y= Freq), stat= "identity")

ggplot(data= table) +
  geom_bar(mapping= aes(x= Var1, y= Freq , fill= Var1), stat= "identity") +
  scale_fill_viridis_d()

ggplot(data= mpg) +
  geom_bar(mapping= aes(x= class, fill= trans)) +
  scale_fill_viridis_d()

ggplot(data= mpg) +
  geom_bar(mapping= aes(x= class, fill= trans), position= "dodge") +
  scale_fill_viridis_d()
