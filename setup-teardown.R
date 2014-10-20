png(filename = "setup-teardown.png",width=1920,height=960,pointsize=48)
data<-read.csv("setup-teardown.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(rev(data[,'setupteardown']),names.arg=rev(data[,'name']),horiz=TRUE,las=1,xlim=c(0,100),col="blue",xlab="% test classes with setUp/tearDown",pty="m")
dev.off()
