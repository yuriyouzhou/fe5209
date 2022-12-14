#  Example 9.6

data(Mishkin,package="Ecdat")

x= as.vector(Mishkin[,1])  # pai1 = one-month inflation rate 
                           #  (in percent, annual rate) 


year = seq(1950 + 1/12,1990+11/12,1/12)
n=length(year)

auto.arima(diff(x),max.p=20,max.q=0,ic="aic")

auto.arima(diff(x),max.p=20,max.q=0,ic="bic")

#  Figure 9.7

data(bmw,package="evir")
bmw = as.vector(bmw)
n=length(bmw)

fitAR1 = arima(bmw, order = c(1,0, 0))
Box.test(fitAR1$resid,lag=2,fitdf=1)

postscript("BMW_resid_acf.ps",height=6,width=6)  #   Figure 9.7
par(mfrow=c(2,2),cex.axis=1.15,cex.lab=1.15)
acf( residuals(fitAR1),lag.max=20 , main="")
qqnorm(residuals(fitAR1),datax=T,main="AR(1) resid")
plot(residuals(fitAR1),ylab="Residual")
graphics.off()
