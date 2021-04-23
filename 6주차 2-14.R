Sex<-c('여','남','여','남','여','남','남','여','여','여')
edu<-c('대졸','중졸','고졸','중졸','고졸','대졸','대졸','대졸','고졸','중졸')
age<-c(33,53,31,29,48,44,31,24,35,33)
income<-c(99,100,98,88,105,100,90,88,87,80)
data<-data.frame(Sex,edu,age,income)

write.table(data,"D:\\2021-1학교\\선형대수학\\data.txt",col.names = TRUE)
x<-read.table("D:\\2021-1학교\\선형대수학\\data.txt",header = T)

#(1)
#edu의 값
x$edu
#5행
x[5,]
#표본의 크기 = 행 개수
nrow(x)
#변수의 개수 = 열 개수
ncol(x)

#(2)
female<-data.frame(x[x$Sex=="여",])
#사실 x가 이미 데이터 프레임이므로 femeale<-x[x$Sex=="여",]만 써도 된다.
female

#(3)
people<-data.frame(x[x$age<40,])
people