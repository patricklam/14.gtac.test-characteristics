require("HH")
png(filename = "control-flow.png",width=1920,height=1440,pointsize=48)
data<-read.csv("control-flow.csv")

par(mar=c(5,6,4,2)+0.1)
barplot(t(as.matrix(data[rev(rownames(data)),c("loops","branches")])),names.arg=rev(data[,'name']),legend.text=TRUE,horiz=TRUE,beside=TRUE,las=1,xlim=c(0,30),col=c("blue","orange"),xlab="% tests",pty="m")
dev.off()
