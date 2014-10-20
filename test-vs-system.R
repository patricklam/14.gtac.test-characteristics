png(filename = "test-vs-system.png",width=1920,height=1920,pointsize=48)
data<-read.csv("test-vs-system.csv")

pos_vector <- rep(3, length(data$name))
pos_vector[data$name %in% c("jgrapht")] <- 1 
#pos_vector[data$name %in% c("poi","jmeter","google-vis")] <- 4
#col_vector <- rep("black", length(data$name))
#col_vector[data$name %in% c("apache-cc")] <- "red"

plot(data$totalloc,data$testloc,xaxt = "n",yaxt = "n",
     xlim=c(0,500000),ylim=c(4000,100000),
     ylab="Test LOC",xlab="System LOC",
     pch='+')
atx=seq(0,500000,100000)
axis(1, at=atx,labels=format(atx,scientific=FALSE,big.mark=" "))
aty=seq(0,100000,20000)
axis(2, at=aty,labels=format(aty,scientific=FALSE,big.mark=" "))
text(data$totalloc, data$testloc, data$name,pos=pos_vector,cex=1.2)
segments(0, 8073, 500000, 500000*0.3002+8073,lwd=2,col="blue")
segments(0, 12980, 500000, 500000*0.03514+12980,lwd=2,col="blue")
dev.off()
