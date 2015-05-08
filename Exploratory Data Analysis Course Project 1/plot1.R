png(filename="plot1.png",width=480,height=480)
data<-read.csv("household_power_consumption.txt", sep=";")
data2<-subset(data, Date=="1/2/2007"|Date=="2/2/2007")
x<-subset(data2,Date=="1/2/2007"|Date=="2/2/2007","Global_active_power")
xx<-x[1:2880,1]
aa<-as.numeric(as.character(xx))
hist(aa,col="red",main="Global Active Power",breaks=11,xlab="Global Active Power(kilowatts)")
dev.off()


