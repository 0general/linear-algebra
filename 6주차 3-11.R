a<-1:20 
b<-c(1,1,2,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,2,1) #
c<-c(4,1,2,1,1,1,3,1,1,1,1,1,1,1,2,1,1,2,1,3)
d<-c(1,2,4,3,1,1,4,2,2,3,2,2,1,3,4,1,3,2,1,1)
e<-c(52,95,95,88.5,80,90,68,88,87,
     76,92.5,44,68,88,91,84.5,68,83,74,68)
f<-c(2,1,1,1,1,1,3,1,1,2,1,4,2,1,1,1,3,1,2,3)
g<-c(35,33,28,30,40,50,45,40,38,20,
     35,46,36,55,65,50,45,52,40,18)

data<-data.frame(cbind(a,b,c,d,e,f,g))

#(1) 빈도분석
freq<-table(data[,4])
freq

prob<-prop.table(freq)
prob
sum_prob<-cumsum(prob)
sum_prob
total<-cbind(freq,prob,sum_prob)
total
#(1)
par(mfrow=c(2,1))
barplot(freq,main="Barplot")
pie(freq,main = "Pie Chart")

#(2)
stem(data[,5],scale = 2)
hist(data[,5])

#(3)
x<-data[,5]; y<- data[,7]
min(x) # 최소값
max(x) # 최대값
mean(x) # 평균
var(x) #분산
median(x) #중앙값


min(y) # 최소값
max(y) # 최대값
mean(y) # 평균
var(y) #분산
median(y) #중앙값

#(4)
hist(data[,5],probability = TRUE)
lines(density(data[,5]))
