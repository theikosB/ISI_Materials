#Simulating a R.V.
p=0.5
U= runif(10,min=0, max=1) #uniform(0,1) smaple
X=as.numeric(U<p) #true(1)/false(0)
X

p=0.2
n=50
U=runif(n, min=0, max=1)
#Generating X_i = Bernouli(p) and X = sum(X_i)
X= sum(U<p) #Binaomial(50,p)
X

#defining PMF as P_i
# X=i iff sum(P_k) till [i-1] < u < sum(P_k) till [i], equality might hold on left 
p1=0.35
p2=0.15
p3=0.4
p4=0.1
P= c(p1, p1+p2, p1+p2+p3, p1+p2+p3+p4)
X= c(1,2,3,4)
counter=1
set.seed(2021)
r=runif(1,min=0, max = 1);
while(r>P[counter]) #could also be dine inyordv= skdu'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
  counter = counter+1
end
X[counter]

#F^{-1}_x(u) = -ln(1-U)
U=runif(1, min=0, max = 1)
lambda= 1
X= -(1/lambda)*log(U)

n=20;
lambda=10;
X=(-1/lambda)* sum(log(runif(n,min=0, max=1)))

dnorm(0)
dnorm(1)
dnorm(0, mean=4, sd=3)

pnorm(0)
pnorm(1)
x= seq(-3,3, by=0.1); y= pnorm(x); plot(x,y, type='l')

x= seq(-3)
x=rnorm(1000)
hist(x)