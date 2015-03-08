plot1 <- function (directory) {
  
  data <- read.table(directory,header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
  data = subset(data,Date=="1/2/2007"|Date=="2/2/2007")
  
  globalPwr <- data$Global_active_power
  
  
  png(filename="plot1.png",width=480,height=480)
  hist(globalPwr, main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
  
  dev.off()
}