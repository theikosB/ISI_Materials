library(tidyverse)
mpgcs= subset(mpg, mpg$class== "compact")
#subset picks out the data in mpg where class== compact is present
ggplot(data= mpgcs, mapping = aes(x= class, y= cty)) +
  geom_boxplot() +
  coord_flip()
ggplot(data= mpgcs, mapping= aes(x= class, y= hwy)) +
  geom_boxplot() +
  geom_jitter(aes(color= trans), size= 0.4, alpha= 0.9) + #alpha-> transparency
  coord_flip()

##Exe: Compare using boxplot, compact- hwy vs cty
ggplot(data= mpg, mapping = aes(x= class, y= cty)) + 
  geom_boxplot() +
  coord_flip()
mpgr= mpg[c("class", "hwy", "cty")] #preselect
mpgrc= subset(mpgr, mpgr$class== "compact") #filter compact
rdf <-data.frame(
  Mileage= c(rep("hwy", nrow(mpgrc)), rep("cty", nrow(mpgrc))),
  compact= c(mpgrc$hwy, mpgrc$cty)
) #creating a dummy column and adding the values later
ggplot(data= rdf, mapping= aes(x= Mileage, y=compact)) +
  geom_boxplot()

#Provides uniform sample from a given set of size
sample(1:6, 1)
sample(1:6, 10, replace= T) #can have repetations
sample(c(0,1), 1) #sample space = (0,1) {tossing a coin}
sample(c(0,1), 10, replace= T, prob= c(0.6, 0.4)) #Bernoulli(0.4) {tossing a biased coin 10 times}
