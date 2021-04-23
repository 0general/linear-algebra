x<-seq(-2*pi,2*pi,by=0.1)
ycos<-cos(x) ; ysin <-sin(x); ytan <-tan(x)


ytotal <-cbind(ysin,ycos,ytan)
matplot(x,ytotal, type='l', ylim=c(-2,2))


