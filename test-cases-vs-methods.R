png(filename = "test-cases-vs-methods.png",width=1920,height=1440,pointsize=48)
data<-read.csv("test-cases-vs-methods.csv")

pos_vector <- rep(3, length(data$name))
pos_vector[data$name %in% c("joda-time", "jgrapht")] <- 1 
pos_vector[data$name %in% c("poi","jmeter","google-vis")] <- 4
col_vector <- rep("black", length(data$name))
col_vector[data$name %in% c("apache-cc")] <- "red"

plot(data$methods,data$cases,
     xlim=c(-400,6500),ylim=c(-400,13500),
     xaxp=c(0,12000,6),yaxp=c(0,12000,6),
     xlab="# Test methods",ylab="# Test cases",
     pch='+')
text(data$methods, data$cases, data$name,pos=pos_vector,col=col_vector,cex=1.2)
segments(-400, -400, 12000, 12000,lwd=3,col="blue")
dev.off()
