x<-matrix(c(1,1,1,1,1,-5,-1,3,7,5), nrow = 5)
x
y<-matrix(c(10,8,6,4,5),nc=1)
y
b<-solve((t(x)%*%x))%*%(t(x)%*%y)
b
xx<-x[,2]
par(mfrow=c(1,1))
plot(xx,y)
par(new=T)
yy<-7.5+(-0.5*xx)
par(new=T)
plot(xx,yy,type = "l")