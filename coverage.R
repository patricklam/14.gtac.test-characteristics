png(filename = "coverage.png",width=1920,height=1440,pointsize=48)
data<-read.csv("coverage.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(t(as.matrix(data[rev(rownames(data)),c("branch","instruction")])),names.arg=rev(data[,'name']),horiz=TRUE,beside=TRUE,las=1,xlim=c(0,100),col=c("blue","orange"),xlab="% tests",pty="m")
legend(80,30,c("instruction","branch"), fill=c("orange","blue"),xpd=TRUE)
dev.off()
