A<-matrix(c(2,-1,0,2,1,3),nrow=2,byrow=TRUE)
B<-matrix(c(2,3,1,1,2,3),nrow=2,byrow=TRUE)
C<-matrix(c(1,-1,2,1),nrow = 2, byrow = TRUE)

print("A+B는 ")
A+B
print("CB는 ")
C%*%B