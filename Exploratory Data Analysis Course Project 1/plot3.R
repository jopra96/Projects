png(filename="plot3.png",width=480,height=480)
data<-read.csv("household_power_consumption.txt", sep=";")
data2<-subset(data, Date=="1/2/2007"|Date=="2/2/2007")
x<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_1")
y<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_2")
z<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_3")
xx<-x[1:2880,1]
yy<-y[1:2880,1]
zz<-z[1:2880,1]
aa<-as.numeric(as.character(xx))
bb<-as.numeric(as.character(yy))
cc<-as.numeric(as.character(zz))
plot(aa,type="l",ylab="Energy sub metering",xaxt='n',xlab="")
points(bb, col="red",type="l")
points(cc, col="blue",type="l")
legend("topright",pch="_",col=c("Black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()


