runningmean = function (x,N){
  y = rpois(N,x)
  # y =runif(N,2,3)
  c = cumsum(y)
  n = 1:N
  c/n}

library(viridis)
par(mfrow=c(1,3))
u = runningmean(1, 100)
x=1:100; plot(u~x, type="l");
replicate(10,
          lines(runningmean(1, 100)~x, type="l", 
                col = sample(viridis(15, option="A",1))
          )
)


u = runningmean(1, 1000)
x=1:1000; plot(u~x, type="l");
replicate(10, lines(runningmean(1, 1000)~x, type="l",  
                    col = sample(viridis(15, option="B",1))
              )
)


u = runningmean(1, 10000)
x=1:10000; plot(u~x, type="l");
replicate(10, lines(runningmean(1, 10000)~x, type="l",   
                    col = sample(viridis(15, option="C",1))
)
)

#Central Limit Theorem
binomialsim1 = rbinom(10,10,0.1)
# generates 100 Binomial (10,0.1) samples
binomialsim2 = rbinom(100,10,0.25)
# generates 100 Binomial (10,0.25) samples
binomialsim3 = rbinom(1000,10,0.5)
# generates 100 Binomial (10,0.5) samples
#stbinomialsim1= (binomialsim3 *1000)


par(mfrow=c(1,3))
hist(binomialsim1, main = "Binomial(10, 0.1)")
hist(binomialsim2, main = "Binomial(10, 0.25)")
hist(binomialsim3, main = "Binomial(10, 0.5)")

x=rnorm(100)
par




#````````````#
#Ex: X~Unif(0,1) \mu= E[X]= 1/2, Var[X]= 1/12
#generate 100 samples of (n=100) 
# (S_100 - 50)/10*\sqrt(1/12)
#Find 

library(lattice)
sample= replicate(100, {
  x= runif(100)
  sum(x)
})
std_sample= (sample-50)/10*(1/12)^(1/2)
histogram(std_sample)

#CLT for uniform
muniform = replicate(100, mean(runif(100)))
suniform = sqrt(100)*(muniform -0.5)/(sqrt(1/12))
hist(suniform, main = "Standardised Uniform", xlab="x")

x = rnorm(100)
muniform = replicate(100, mean(runif(100)))
suniform = sqrt(100)*(muniform -0.5)/(sqrt(1/12))
par(mfrow=c(1,3))
boxplot(x,suniform)
qqnorm(x);qqline(x)
qqnorm(suniform);qqline(suniform)

library(moments)
c(skewness(x),skewness(suniform))
c(kurtosis(x), kurtosis(suniform))


#CLT in Pareto



