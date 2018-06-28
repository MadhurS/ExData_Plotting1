setwd("c:/Project1")
data <- read.csv("household_power_consumption.txt", Header= T, sep=";", na.strings= "?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="")
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
final <- paste(as.Date(data1$Date), data1$Time)
data1$final <- as.POSIXct(final)
 
 with(data1, {
+           plot(Global_active_power~final, type="l",
+          ylab="Global Active Power (kilowatts)", xlab="")
+ })
