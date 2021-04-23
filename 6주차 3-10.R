x1<-seq(-6,6,0.5)
x2<-seq(-6,6,0.5)
mu1<-1; mu2<-2; s1<-1; s2<-4; r<-0.5

func<-function(x1,x2) {
  pro1<-1/(2*pi*sqrt(s1*s2)*(1-r^2))
  pro2<-((x1-mu1)/sqrt(s1))^2
  pro3<-(2*r*(x1-mu1)*(x2-mu2))/(sqrt(s1*s2))
  pro4<-((x2-mu2)/sqrt(s2))^2
  pro5<-(pro2-pro3+pro4)
  pro6<-pro1*exp(-pro5/(2*(1-r^2)))
  return(pro6)
}
y<-outer(x1,x2,FUN=func)
persp(x1,x2,y)

