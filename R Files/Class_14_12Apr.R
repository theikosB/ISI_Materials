x=c(9.4,13.4,15.6,16.2,16.4,16.8,18.1,18.7,18.9,
    19.1,19.3,20.1,20.4,21.6,21.9,23.4,23.5,24.8,24.9,26.8)
S = x-22
Sminus = sum(S<0)
Splus = sum(S>0)
binom.test(sum(S > 0), length(S), p=0.5, alternative="less")


x= c(35.5, 44.5, 39.8, 33.3, 51.4, 51.3, 30.5, 48.9, 42.1, 40.3,
     46.8, 38.0, 40.1, 36.8, 39.3, 65.4, 42.6, 42.8, 59.8, 52.4, 26.2,
     60.9, 45.6, 27.1, 47.3, 36.6, 55.6, 45.1, 52.2, 43.5)
median(x)

11:01
boxplot(x)
11:01
wilcox.test(x, mu=45, alternative="two.sided")


A = c(8.52,  8.70,  9.55, 10.80,  8.85, 10.17,  7.60,  7.70)
B= c(10.20,  9.55,  9.35,  9.85,  9.16, 10.60, 11.23,  9.10,
     9.58, 10.82, 10.33)
par(mfrow=c(1,2))
qqnorm(A)
qqnorm(B)
t.test(A, B)

Placebo= c(7, 5, 6, 4, 12)
NewDrug= c(3, 6, 4, 2, 1)
wilcox.test(NewDrug, Placebo)


Gap=c(22, 29, 13, 16, 15, 18, 14, 6)
Growth=c(17, 20, 170,315, 22, 190, 64)
par(mfrow=(c(2,2)))
hist(Gap); qqnorm(Gap);hist(Growth);qqnorm(Growth)
wilcox.test(Gap, Growth)



