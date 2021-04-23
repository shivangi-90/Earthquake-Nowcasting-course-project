
Data<-c( 24, 81, 22, 19, 9, 92, 34, 207, 19, 1, 349, 44, 83, 166, 23, 37, 30, 62, 52, 131, 60, 33, 65, 158, 54, 24, 90, 34, 88, 12, 9, 191, 17, 128, 126, 109)
A<-fitdist(Data, 'weibull')
B<-fitdist(Data, 'lnorm')
C<-fitdist(Data, 'gamma')
D<-fitdist(Data, 'exp')
require (actuar)

E<-fitdist(Data, 'invgauss',start = list(mean = 5, shape = 1))
X<-fitdist(Data,'invweibull')

#histogram of the data
hist(Data)

#summary of the results
summary(A)
summary(B)
summary(C)
summary(D)
summary(E)
summary(X)

png(file= "A.png")
plot(A)

dev.off()

par(mfrow=c(1,1.5))
a<-c("Weibull","lognormal","gamma","exponential","invgauss","inweibull")

denscomp(list(A,B,C,D,E,X),legendtext = a)
cdfcomp(list(A,B,C,D,E,X), legendtext = a)
qqcomp(list(A,B,C,D,E,X), legendtext = a)
qqcomp(A,B,C,D,E,X)

ks.test(Data,"pweibull", 1.06983, 74.80112)
ks.test(Data,"plnorm",3.793244, 1.124995)
ks.test(Data,"pgamma", 1.14987772  , 0.01579841 )
ks.test(Data,"pexp", 0.01373932 )
ks.test(Data,"pinvgauss",74.51657,23.48021)
ks.test(Data,"pinvweibull",0.7126021,25.3732333)

gfMLE<-gofstat(list(A, B, C, D, E, X))
print(gfMLE)

eps_48 <- plnorm (48, mean = 3.834651 , sdlog =  1.112354)
print(eps_48)

eps_61 <- plnorm (61, mean = 3.834651 , sdlog =  1.112354)
print(eps_61)

