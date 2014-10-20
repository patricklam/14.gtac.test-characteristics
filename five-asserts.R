png(filename = "five-asserts.png",width=1920,height=960,pointsize=48)
data<-read.csv("five-asserts.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(rev(data[,'fiveasserts']),names.arg=rev(data[,'name']),horiz=TRUE,las=1,xlim=c(0,40),col="blue",xlab="% tests with >= 5 asserts",pty="m")
dev.off()
