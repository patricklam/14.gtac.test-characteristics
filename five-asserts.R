require("HH")
png(filename = "five-asserts.png",width=1920,height=960,pointsize=48)
data<-read.csv("five-asserts.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(data[,'fiveasserts'],names.arg=data[,'name'],horiz=TRUE,las=1,xlim=c(0,30),col="blue",xlab="% tests with >= 5 asserts",pty="m")
dev.off()
