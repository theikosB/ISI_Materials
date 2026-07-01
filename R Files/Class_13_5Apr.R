require(UsingR)
names(fat)

z= mean(fat$neck)/ mean(fat$wrist)
z
y= mean(fat$neck/fat$wrist)
y
plot(fat$wrist, fat$neck) #Plot to check
plot(fat$wrist)
plot(fat$neck)

require(MASS)
plot(rank(Animals$body), rank(Animals$brain))

y= read.csv("annual_temp.csv", header= TRUE)
y