plot2 <- function (directory) {
  
  data <- read.table(directory,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
  data = subset(data,Date=="1/2/2007"|Date=="2/2/2007")
  
  globalPwr <- data$Global_active_power
  dt = paste(data$Date,data$Time)
  dt2 <- strptime(dt,format ="%d/%m/%Y %H:%M:%S")
  
  
  png(filename="plot2.png",width=480,height=480)
  

  plot(dt2,globalPwr,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  
  
  dev.off()
}