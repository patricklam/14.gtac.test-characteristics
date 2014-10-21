png(filename = "test-clones.png",width=1920,height=960,pointsize=48)
data<-read.csv("test-clones.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(rev(data[,'clones']),names.arg=rev(data[,'name']),horiz=TRUE,las=1,xlim=c(0,100),col="blue",xlab="% test methods belonging to clone sets",pty="m")
dev.off()
