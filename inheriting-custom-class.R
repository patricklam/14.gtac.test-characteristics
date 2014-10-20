png(filename = "inheriting-custom-class.png",width=1920,height=960,pointsize=48)
data<-read.csv("inheriting-custom-class.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(rev(data[,'nottestcase']),names.arg=rev(data[,'name']),horiz=TRUE,las=1,xlim=c(0,100),col="blue",xlab="% test classes inheriting from custom superclass",pty="m")
dev.off()
