x=read.csv(file.choose(),header=T) #with title
x
y=read.csv(file.choose(),header=F) # without title
y
z=read.csv(file.choose(),header=T,sep=",")
z
a=read.csv(file.choose(),header=T,sep="")
a
b=read.csv(file.choose(),header=T,sep="\t")
b
c=read.delim(file.choose(),header=T)
c
d=read.delim(file.choose(),header=T,sep=',')
d
#basic statistical command
c=c(12,15,16,17,18,19,8,9,56,85)
c
length(c)
max(c)
min(c)
mean(c)
median(c)
sd(c) #sqrt(var(c))
#sqrt(sum(X-mean(c))^2/length(c)-1)
var(c) 
sqrt(var(c))

cumsum(c) #cummulative sum
cummax(c)
cummin(c)

t=4
mean(c[t:t+5])
mean(c[1:10])
c[4:9]

#categorical data or qualitative data
#bar graph , pie graph
# histram,dot plot,freque polygon,ogive(less,greeter)

x1=read.csv(file.choose(),header=T) #with title
x1
view(x1)
attach(x1)
names(x1) #HEADER
class(x1) #DATA FRAME
class(x1$Gender)
length(x1$Gender)
y=table(Gender)
y
barplot(y)
barplot(y,main="barplot",xlab="gender",ylab="frequency",col=c("Red","Green"))
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1000,17871))
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"))#bar name
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"),las=1) # categarical name direction change
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"),las=2)
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"),las=3)
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"),las=1,horiz=T) #horizantaly graph
barplot(y,main="barplot",Xlab="gender",Ylab="frequency",col=c(1,2),names.arg=c("f","M"),las=1,horiz=F)

#names.arg=bar name
#las=categorical name orientation(direction) change
#horiz=T-horizontal graph(bar)
#horiz=F-vertical graph(bar)

class(x1)
attach(x1)
y1=table(Marital.Status)
y1
barplot(y1,main="Barplot of marital status",xlab="Marital status",ylab="frequency",col=c("yellow",10,4),names.arg=c("div","mar","unmar"),horiz=F,las=2)
z=table(Marital.Status,Gender)
z
barplot(z,main = "Barploy",xlab = "Gender",ylab = "Marital status",col = c(95,70,48),names.arg = c("F","M"),las=2,beside = T)
#beside=T - different column
#beside=F - stacked bar graph
rownames(z)
barplot(z,main = "Barploy",xlab = "Gender",ylab = "Marital status",col = c(95,70,48),names.arg = c("F","M"),las=2,beside = T,horiz=F,legend=rownames(z))

barplot(z,main = "Barploy",xlab = "Gender",ylab = "Marital status",col = c("orange","white","green"),names.arg = c("M","F"),las=1,beside = T,horiz=F,legend=rownames(z),args.legend=c(x="topright",bty="n"))
#args.legend - shift legend in different places
#bty - transparancy of legend

w=table(Gender,Marital.Status)
w
barplot(w,main = "Barplot",xlab = "Marital status",ylab = "Gender",col = c(95,70,48),names.arg = c("div","mar","single"),las=2,beside=F)

t1=table(Gender,Marital.Status)
t1
pt1=prop.table(t1)
pt1
pt1=prop.table(t1,2)#1=margine
pt1
barplot(pt1)
rownames(t1)
barplot(t1,main = "Barplot",xlab = "Marital status",ylab = "Gender",col = c(95,70),names.arg = c("div","mar","single"),las=1,beside=T,xlim=c(0,10),legend=TRUE,args.legend=list(x=10,y=20,bty="n"))

#pichart-------------------------------
x2=read.csv(file.choose(),header=T) #with title marksheet
x2
View(x2)
attach(x2)
t2=table(x2$Cateogory)
t2
pie(t2)
pie(t2,main="piechart",col=c(1:4),edges=2000,radius=2)
pie(t2,main="piechart",col=c(1:4),edges=2000,radius=1,clockwise = F,init.angle=90)
pie(t2,main="piechart",col=c(1:4),edges=2000,radius=1,clockwise = F,init.angle=180)
pie(t2,main="piechart",col=c(1:4),edges=2000,radius=1,clockwise = T,init.angle=90)
pie(t2,main="piechart",col=c(1:4),edges=2000,radius=1,clockwise = T,init.angle=180)

pie(t2,main="piechart",col=c(1:4),edges=2000,radius=1,clockwise = T,init.angle=90,angle=180,density=100)

x3=read.csv(file.choose(),header=T) #with title
x3
View(x3)
attach(x3)
t3=table(x3$Gender)/length(x3$Gender)
t3
table(x3$Gender)
length(x3$Gender)
pie(t3)
pie(t3,main="piechart",col=c(1:2),edges=2000,radius=1,clockwise = T,init.angle=90,angle=180,density=100)


#barplote
x4=read.csv(file.choose(),header=T) #with title
x4
View(x4)
attach(x4)
barplot(x4)
class(x4)
t4=x4$Frequency
t4
rownames(t4)
barplot(t4,main = "Barplot",xlab = "soft drink",ylab = "Frequency",col = c(1:5),names.arg = c("coke","Diet coke","Dr.Pepper","Pepsi","Sprite","tt"),las=1,beside=T,xlim=c(0,6),legend=TRUE,args.legend=list(x="topright",bty="n"))

pie(t4,labels=c("coke","Diet coke","Dr.Pepper","Pepsi","Sprite"),main="piechart",col=c(1:6),edges=2000,radius=1,clockwise = T,init.angle=90,angle=180,density=500,border=c(1:6))

#example
x5=read.csv(file.choose(),header=T) #with title
x5
length(x5$data)
t5=table(x5$data)
t5
barplot(t5,main = "television show",xlab = "shows",ylab = "Frequency",col = c(1:4),names.arg = c("CSI","DH","L&O","Trace"),las=1,beside=T,xlim=c(0,6),ylim=c(0,50),legend=TRUE,args.legend=c(x="topright",bty="n"))

pie(t5,labels=c("CSI","DH","L&O","Trace"),main="television show",col=c(1:4),edges=2000,radius=1,clockwise = T,init.angle=90,angle=180,density=500,border=c(1:4))


#Histogram (quantitative data)
x=c(4,5,9,14,29,5,11)
hist(x)

y=c(1:10)
hist(y,main="histogram",xlab = "class",ylab = "Frequency",col = c(1:5))

data()
x=AirPassengers
x
hist(x,main="histogram",xlab = "class",ylab = "Frequency",col = c(1:5),freq=F)# or prob=T Same
lines(density(x)) #add line 

hist(x,main="histogram",xlab = "class",ylab = "Frequency",col = c(1:11),freq=T,breaks=10,xlim=c(0,700),ylim=c(0,25))#break=number of class represent num of fre
lines(density(x),col=5,lwd=5)

hist(x,main="histogram",xlab = "class",ylab = "Frequency",col = c(1:11),freq=T,breaks=seq(from=100,to=700,by=50),xlim=c(0,800),ylim=c(0,50))


c=c(14,19,24,19,16,20,24,20,21,22,24,18,17,23,26,22,23,25,25,19,18,16,15,24,21,16,19,21,23,20,22,22,16,16,16,12,25,19,24,20)
c
hist(c)
hist(c,main="histogram",xlab = "class",ylab = "Frequency",col=c(1:7),
     freq=T,breaks=seq(from=10,to=30,by=2),xlim=c(10,30),
     ylim=c(0,10))
lines(density(c),col=5,lwd=5)

d=c(8.9,10.2,11.5,7.8,10.0,12.2,13.5,14.1,10.0,12.2,6.8,9.5,11.5,11.2,14.9,7.5,10.0,6.0,15.6,11.5)
d
hist(d,main="histogram",xlab = "class",ylab = "Frequency",col=c(1:7),
     freq=T,breaks=seq(from=4,to=20,by=2),xlim=c(4,17),
     ylim=c(0,6))
lines(density(d),col=5,lwd=5)

#cumulative frequency

l=seq(from=100,to=170,by=10)
l
u=seq(from=110,to=180,by=10)
u
m=(l+u)/2
m
f= c(11, 28, 36, 49, 33, 20, 8, 0)
f
x=rep(m,times=f)
x
hist(x)
hist(x,main="histogram",xlab = "class",ylab = "Frequency",col=c("blue")
     ,xlim=c(100,180),ylim=c(0,50),breaks=seq(from=100,to=180,by=10))
lines(m,f,col="red") #freq polygon

#freq polygon 
l=seq(from=100,to=170,by=10)
l
u=seq(from=110,to=180,by=10)
u
m=(l+u)/2
m
f= c(11, 28, 36, 49, 33, 20, 8, 0)
f
plot(m,f,col="red",main="freq poly",type="o")#o=point with line, l=line ,p=point

#Ogive cumulative freq

l=c(10,15,20,25,30)
l
u=c(14,19,24,29,34)
u
f=c(4,8,5,2,1)
f
cf=cumsum(f)
cf
plot(u,cf,type="o")


marks=c(10,20,30,40,50,60,70)
marks
f=c(4,6,10,20,18,2)
f
cf=cumsum(f)
cf
cf1=c(0,cf)
cf1
plot(marks,cf1,type="o",col="Red",main="less than OGIVE")

marks=c(10,20,30,40,50,60,70)
marks
f=c(4,6,10,20,18,2)
f
f1=rev(f)
f1
cf=cumsum(f1)
cf
cf1=c(0,cf)
cf1
cf2=rev(cf1)
cf2
plot(marks,cf2,type="o",col="Red",main="More than OGIVE")



#scatter plot______________

a= Orange
a
plot(a$age)
plot(a$age,a$circumference,main="Orange",col=1,las=1,pch=3) #pch=change shape


b=airquality
b
plot(b$Wind,b$Temp,main="Airquality",col=1,las=1,pch=15)
plot(b,main="Airquality",col=1,las=1,pch=15)

c=cars
c
plot(c$speed,c$dist,main="cars",col=5,las=1,pch=2)
plot(c,main="cars",col=5,las=1,pch=2)


#line plot
x=1:10
x
y=x^2
y
plot(y,main="Square Graph",col=2,type="o",las=1,xlab="Square of x",pch=5)

d=AirPassengers
d
plot(d,main="Square Graph",col=2,type="l",las=1,xlab="Square of x")


#probability distribution
#1. discrete pro. dist

# 1. Binomial distribution

#dbinom=to find exact value,(p(X=x))
#pbinom=to find cum. prob,p(X<=x)(at least& at most) ,p(X>=x)=1-p(X<=x)
#qbinom= to find Inverse cdf,p(x<=x)=o.5 == x=?
#rbinom=to generate random sample r

dbinom(x=5,size=20, prob=0.5)
#example p=0.5,n=3
#find proba x =0,1,2,3
P0=dbinom(0,3,0.5)
P1=dbinom(1,3,0.5)
P2=dbinom(2,3,0.5)
P3=dbinom(3,3,0.5)
sum(P0+P1+P2+P3)
p4=dbinom(0:3,3,0.5)
p4
sum(p4)
p5=dbinom(c(0,1,2,3),3,0.5)
p5
#direct method
p=0.5
p
q=1-p
q
n=3
n
x=2
x
p6=choose(n,x)*(p^x)*(q^(n-x))
p6

#n=5,p=0.5
#find p(X<=2)
p1=dbinom(0:2,5,0.5)
p1
sum(p1)
#second method
p2=pbinom(2,5,0.5,lower.tail=TRUE)
p2
#find p(x>=2)
p3=dbinom(2:5,5,0.5)
p3
sum(p3)
p4=pbinom(1,5,0.5,lower.tail=FALSE)
p4

#ex-3 consider a binomial experiment with True trial and prob is 0.4
# then find 1. prob of 1 succes 2. prob of at least 1 succses
# 3. find prob of 2 succes 

p1=dbinom(1,2,0.4)
p1
p2=dbinom(c(1,2),2,0.4)
p2
sum(p2)
p4=pbinom(q=0,size=2,prob=0.4,lower.tail=F)
p4
p3=dbinom(2,2,0.4)
p3
#find prob (X<=x)=0.64 n=2,p=0.4
p1=qbinom(0.4,2,0.64,lower.tail=TRUE)
p1
#find prob (X>=x)=0.64 n=2,p=0.4
p2=qbinom(0.4,2,0.64,lower.tail=FALSE)
p2

#examples(ch 5 ASW-ex-25)
#p=0.4, 
#n=2
#(a)=f(1)=p(x=1)
a=dbinom(1,2,0.4)
a
#(b)=f(0)=p(x=0)
b=dbinom(0,2,0.4)
b
#(c)=f(2)=p(x=2)
c=dbinom(2,2,0.4)
c
#(d)=at least one success=p(x>=1)
#p(x>=1)=p(x>0)
d=dbinom(c(1,2),2,0.4)
d
e=pbinom(0,2,0.4,lower.tail=FALSE)
e
#mean=np,val=npq
q=1-0.4
q
mean=2*0.4
mean
var=2*0.4*q
var
s.d=sqrt(var)
s.d

#Example 2

n=10
p=0.10
q=1-p
a=dbinom(0,n,p)
a
b=dbinom(2,n,p)
b
#p(x<=2)
c=dbinom(c(0,1,2),n,p)
c
sum(c)
c1=pbinom(2,n,p,lower.tail=TRUE)
c1
#p(x>=1)
d=pbinom(0,n,p,lower.tail=FALSE)
d
mean=n*p
mean
var=n*p*q
var
s.d=sqrt(var)
s.d

#example 3
n=20
p=0.70
q=1-p
a=dbinom(12,n,p)
a
b=dbinom(16,n,p)
b
#p(x>=16)
c=pbinom(15,n,p,lower.tail = FALSE)
c
#p(x<=15)
d=pbinom(15,n,p,lower.tail = TRUE)
d
mean=n*p
mean
var=n*p*q
var
s.d=sqrt(var)
s.d

#Exaple 4
p=0.23
#(a) 
n=6
a=dbinom(2,n,p)
a
b=pbinom(1,n,p)
b
n=10
c=dbinom(0,n,p)
c

#ex 29
p=0.90
n=1
a=dbinom(1,n,p)
a
n=2
b=pbinom(0,n,p,lower.tail = FALSE)
b
n=3
c=pbinom(0,n,p,lower.tail = FALSE)
c

#poison distribution
mean=3
a=dpois(2,3)
a
b=dpois(1,3)
b
c=dpois(1,3,lower.tail=FALSE)
c
# 1 time== 2 mean occu # 39
#a mean=3*2=6
d=dpois(2,2)
d
e=dpois(6,6)
e
f=dpois(5,4)
f

# 40
#mean=48  60 min==48 calls
#         5 min =?

a=dpois(3,4) #5 min
a
b=dpois(10,12) # 15 min
b
c=dpois(0,4) #5 min, no caal on hold
c
d=ppois(0,2.4)# 3 min
d

#45
#year no of accident
# 1           
# 365=======3
# 12 month
a=dpois(0,3)
a
b=ppois(1,3,lower.tail=FALSE)
b
c=ppois(0,1.5)
c

#hypergeometric probability distribution
#total pop    sample
#m+n=N          k
#pop succ=M      succ=x


N=12
k=3
m=5 #defective
x=1
n=N-m
n
a=dhyper(x,m,n,k)
a

# 48 ch 5
N=10
k=3
m=3 #defective
x=2
n=N-m
n
a=dhyper(2,3,n,k)
a

#49
N=52
#1
k=2 #4*4+4
m=20
x=2
n=N-m
n
a=dhyper(x,m,n,k)
a
#b
b=dhyper(2,4,48,2)
b
c=dhyper(2,16,36,2)
c
#50
N=60
k=10
n=N-m
n
#1
x=0
k=10
m=20
n=N-m
a=dhyper(x,m,n,k)
a
#2
x=1
m=20
n=40
k=10
b=dhyper(x,m,n,k)
b
#3
m=20
x=1
k=10
n=40
c=phyper(1,20,40,10,F)
c
#4
d=dhyper(9,40,20,10)
d


#exponential distribution
# ex 32
rate=1/8
#1 p(x<=6)
a=pexp(6,rate,T)
a
#2 p(x<=4)
b=pexp(4,rate,T)
b
# p(x>=6)=p(x>5)
c=pexp(5,rate,F)
c
#p(4<=x<=6)=p(x<=6)-p(x<=4)
d=pexp(6,rate,T)-pexp(4,rate,T)
d

#33
rate=1/3
#bp(x<=2)
b=pexp(2,rate,T)
b
# p(x>=3)
c=pexp(2,rate,F)
c
# p(x<=5)
d=pexp(5,rate,T)
d
# p(2<=x<=5)=
d=pexp(5,rate,T)-pexp(2,rate,T)
d

#34
rate=1/12.1
#less than 10
a=pexp(10,rate,T)
a
#p(x>=20)
b=pexp(19,rate,F)
b
#p(10<=x<=20)
c=pexp(20,rate,T)-pexp(10,rate,T)
c
#p(x>=18)
d=pexp(17,rate,F)
d

#point estimater

#lower==p(x<=x) == lower.tail=T
#upper == P(X>x) ==lower.tail=F

#pnorm(x,mean,sd)  prob
#qnorm(p ,mean,sd)   point
#rnorm(x,mean,sd)  random sample

#x=dnoem(x,mean,sd)

#(known case)interval estimater
xbar=82 #sample mean
n=100 #sapmle size
sd=20 # population s.deviation
alpha=0.05
#standard error
SE=sd/sqrt(n)
SE
zalpha=qnorm(0.025,0,1,F) #f=+ ,T=-  ###
zalpha
zalpha1=qnorm(0.025,0,1,T) #z1=z2=z3=same  alpha/2
zalpha1
zalpha2=qnorm(0.975,0,1,F) #1-alpha/2
zalpha2
zalpha3=qnorm(c(alpha/2,1-alpha/2))
zalpha


zalpha1=qnorm(0.025,0,1,F) 
zalpha1
zalpha2=qnorm(0.975,0,1,T) #1-alpha/2
zalpha2

ME=sd*zalpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval
#conclusion-using 95% confidence interval interval value is 

#ex =2

xbar=32 #sample mean
n=50 #sapmle size
sd=6 # population s.deviation
alpha=0.05
SE=sd/sqrt(n)
SE
zalpha=qnorm(0.025,0,1,F) #f=+ ,T=-  ###
zalpha
ME=sd*zalpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval

#q-3
xbar=82 #sample mean
n=100 #sapmle size
s=20 # sample s.deviation
alpha=0.05
SE=s/sqrt(n)
SE
talpha=qt(0.025,n-1,lower.tail=F)
talpha
ME=SE*talpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval

#q-4
xbar=19.5 #sample mean  99 95 99
n=65 #sapmle size
s=5.2 # sample s.deviation
alpha=0.05 # 95
SE=s/sqrt(n)
SE
talpha=qt(0.025,n-1,lower.tail=F)
talpha
ME=SE*talpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval

xbar=19.5 #sample mean  99 95 90
n=65 #sapmle size
s=5.2 # sample s.deviation
alpha=0.10 #90
SE=s/sqrt(n)
SE
talpha=qt(0.05,n-1,lower.tail=F)
talpha
ME=SE*talpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval

xbar=19.5 #sample mean  99 95 90
n=65 #sapmle size
s=5.2 # sample s.deviation
alpha=0.01 #99
SE=s/sqrt(n)
SE
talpha=qt(0.005,n-1,lower.tail=F)
talpha
ME=SE*talpha
ME
Interval=c(xbar-ME,xbar+ME)
Interval

#normal distribution

#(1)
rate=1/2
a=pexp(6,rate,T)
a
#p(x<=4)
b=pexp(4,rate,T)
b
#p(x>=6)
b=pexp(5,rate,F)
b
#p(x<=6)-p(x<=4))
d=pexp(6,rate,T)-pexp(4,rate,T)
d
#(2)
rate=1/3
#p(x<=2)
a=pexp(2,rate,T)
a
#p(x>=3)
a=pexp(2,rate,F)
a
#p(x<=5)
a=pexp(5,rate,T)
a
#p(2<=x<=5)
d=pexp(2,rate,T)-pexp(5,rate,T)
d
#p(2<=x<=5)
d=pexp(5,rate,T)-pexp(2,rate,T)
d
#(34)
rate=12.1
#p(x<10)
a=pexp(9,rate,F)
a
#p(x<10)
a=pexp(10,rate,T)
a
#p(x>=20)
a=pexp(19,rate,F)
a
#p(20<=X<=10)
d=pexp(20,rate,T)-pexp(10,rate,T)
d
#(34)
rate=1/12.1
#p(x<10)
a=pexp(10,rate,T)
a
#p(x>=20)
a=pexp(19,rate,F)
a
#p(20<=X<=10)
d=pexp(20,rate,T)-pexp(10,rate,T)
d
#p(x>=18)
a=pexp(17,rate,F)
a
r=1/2
#p(x<=1)
a=pexp(1,r,T)
a
#p(1<=x<=2)
d=pexp(2,r,T)-pexp(1,r,T)
d
#p(x>4)
a=pexp(4,r,F)
a
#(37)
r=1/25
#p(x<=20)
a=pexp(20,r,T)
a
#p(x>5)
a=pexp(5,r,F)
a
#p(x<=25)
a=pexp(25,r,T)
a
#p(x>30)
a=pexp(30,r,F)
a
#(1)x=2
dnorm(2)
mean=50
sigma=5
#(a)p(45<=x<=50)
pnorm(55,m,s,T)-pnorm(45,m,s,T)
m=50
s=5
#(a)p(45<=x<=50)
pnorm(55,m,s,T)-pnorm(45,m,s,T)
#(a)p(45<=x<=55)
pnorm(55,m,s,T)-pnorm(45,m,s,T)
pnorm(45,m,s,F)-pnorm(55,m,s,F)
pnorm(45,m,s,F)-pnorm(55,m,s,T)
pnorm(55,m,s,F)-pnorm(55,m,s,F)
(pnorm(45,m,s,F)+pnorm(55,m,s,T))-1
1-((pnorm(45,m,s,T)+pnorm(55,m,s,F))
   pnorm(-1.0)
   a=pnorm(-1.0)
   a
   #p(z>=-1)
   a=pnorm(-1,lower.tail=F)
   a
   #p(z>=-1.5)
   a=pnorm(-1.5,lower.tail=F)
   a
#interval estimation
   
   xbar=82  #sample mean
   n=100#sample size
   sd=20 #population standard deviation
   alpha=0.05
   #Standard error
   SE=sd/sqrt(n)
   SE
   zalpha=qnorm(0.025,0,1,T)
   zalpha
   zalpha1=qnorm(0.975,0,1,F)
   zalpha1
   zalpha2=qnorm(c(alpha/2,1-alpha/2))
   zalpha2
   zalpha3=qnorm(0.025,0,1,F)
   zalpha3
   zalpha4=qnorm(0.975,0,1,T)
   zalpha4
   ME=SE*zalpha3#or zalpha4
   ME
   interval=c(xbar-ME,xbar+ME)
   interval
   #conclution=Using 95% confidence interval value (78.08,85.91).
   
   #Example 2
   
   xbar=32
   sd=6
   n=50  
   alpha=0.05
   
   SE=sd/sqrt(n)
   SE
   zalpha=qnorm(0.025,0,1,F)
   zalpha
   ME=SE*zalpha
   ME
   interval=c(xbar-ME,xbar+ME)
   interval
   
   # sigma unknown
   
   sm=82
   s=20
   n=100
   alpha=0.05
   SE=s/sqrt(n)
   SE
   talpha=qt(0.025,n-1,lower.tail=F)
   talpha
   ME=SE*talpha
   ME
   interval=c(sm-ME,sm+ME)
   interval
   
   #example 2
   
   n=65
   x=19.5
   s=5.2
   alpha=0.1
   alpha1=0.05
   alpha2=0.01
   SE=s/sqrt(n)
   SE
   talpha=qt(alpha/2,n-1,lower.tail=F)
   talpha1=qt(alpha1/2,n-1,lower.tail=F)
   talpha2=qt(alpha2/2,n-1,lower.tail=F)
   talpha
   talpha1
   talpha2
   ME=SE*talpha
   ME1=SE*talpha1
   ME2=SE*talpha2
   ME
   ME1
   ME2
   interval=c(x-ME,x+ME)
   interval1=c(x-ME1,x+ME1)
   interval2=c(x-ME2,x+ME2)
   interval
   interval1
   interval2