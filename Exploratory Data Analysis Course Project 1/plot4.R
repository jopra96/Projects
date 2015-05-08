png(filename="plot4.png",width=480,height=480)
data<-read.csv("household_power_consumption.txt", sep=";")
data2<-subset(data, Date=="1/2/2007"|Date=="2/2/2007")
k<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Global_active_power")
x<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_1")
y<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_2")
z<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Sub_metering_3")
v<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Voltage")
w<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Global_reactive_power")
xx<-x[1:2880,1]
yy<-y[1:2880,1]
zz<-z[1:2880,1]
vv<-v[1:2880,1]
ww<-w[1:2880,1]
kk<-k[1:2880,1]
aa<-as.numeric(as.character(xx))
bb<-as.numeric(as.character(yy))
cc<-as.numeric(as.character(zz))
dd<-as.numeric(as.character(vv))
ee<-as.numeric(as.character(ww))
ff<-as.numeric(as.character(kk))
par(mfrow = c(2,2))
plot(ff,type="l",ylab="Global Active Power",xaxt='n',xlab="")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
plot(dd,type="l",ylab="Voltage",xlab="datetime",xaxt='n')
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
plot(aa,type="l",ylab="Energy sub metering",xaxt='n',xlab="")
points(bb, col="red",type="l")
points(cc, col="blue",type="l")
legend("topright",pch="_",col=c("Black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
plot(ee,type="l",ylab="Global_reactive_power",xlab="datetime",xaxt='n')
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()


