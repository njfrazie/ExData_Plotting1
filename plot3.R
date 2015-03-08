plot3 <- function (directory) {
  
  data <- read.table(directory,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
  data = subset(data,Date=="1/2/2007"|Date=="2/2/2007")
  
  globalPwr <- data$Global_active_power
  dt = paste(data$Date,data$Time)
  dt2 <- strptime(dt,format ="%d/%m/%Y %H:%M:%S")
  sub1 <- data$Sub_metering_1
  sub2 <- data$Sub_metering_2
  sub3 <- data$Sub_metering_3
  legendD <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
  
  
  png(filename="plot3.png",width=480,height=480)
  
  
  plot(dt2,sub1,type="n",ylab="Energy sub metering",xlab="")
  points(dt2,sub1,type="l")
  points(dt2,sub2,type="l",col="red")
  points(dt2,sub3,type="l",col="blue")
  legend("topright", legend= legendD, lty=c(1,1,1), col=c("black","red","blue"))
  
  dev.off()
}