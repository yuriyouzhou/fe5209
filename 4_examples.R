

data(Mishkin,package="Ecdat")

x= as.vector(Mishkin[,1])  # pai1 = one-month inflation rate 
                           #  (in percent, annual rate) 

year = seq(1950 + 1/12,1990+11/12,1/12)
n=length(year)
logn=log(n)

#####  Time series plots
postscript("inflation.ps",width=7,height=6)         # Fig 9.1
par(mfrow=c(2,1))
plot(year,x,ylab="inflation rate",type="l",xlab="year",cex.lab=1.5,
   cex.axis=1.5,cex.main=1.3,main="(a)")
plot(year[2:n],diff(x),ylab="change in rate",type="l",xlab="year",cex.lab=1.5,
   cex.axis=1.5,cex.main=1.2,main="(b)")
graphics.off()

data(AirPassengers)
x = as.matrix(AirPassengers)
n = length(x)
year = 1949 + (0:(n-1))/12



postscript("airpass.ps")               #    Figure 9.2
plot(year,x,type="b",ylab="passengers",cex.axis=1.5,cex.lab=1.5,cex=1.5,
   lwd=2)
graphics.off()









