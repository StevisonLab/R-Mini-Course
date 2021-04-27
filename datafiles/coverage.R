#plot coverage along a chromosome

chrXL_group3b=read.table(file="chrXL_group3b.depth")

mb=chrXL_group3b$V2/10^6

lo=loess(chrXL_group3b$V3~chrXL_group3b$V2,enp.target=tail(chrXL_group3b$V2,1)/5000,data.frame(x=chrXL_group3b$V2,y=chrXL_group3b$V3))

avg=mean(chrXL_group3b$V3)

png(file="chrXL_group3b.png",res=150,height=2.75,width=4.5,units="in",pointsize=7)
#plot(chrXL_group3b$V2/10^6,chrXL_group3b$V3, main="chrXL_group3b Coverage",xlab="Position (Mb)",ylab="Coverage")
#abline(h=avg,col="red",lwd=3)
plot(mb,chrXL_group3b$V3,main="chrXL_group3b Coverage",xlab="Position (Mb)",ylab="Coverage",type="l",col="grey50")
lines(mb,predict(lo),lwd=2,col="red")
mtext(side=3,paste("mean = ",round(avg,2)),cex=0.8,col="red",adj=1)
dev.off()