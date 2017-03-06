library(vioplot)

Pairs <- read.csv("~/Documents/Code/LVO_DeeperLook/PairwiseDiff.csv")
Pairs <- na.omit(Pairs)
Pairs <- abs(Pairs)

vioplot(Pairs$Round1,Pairs$Round2,Pairs$Round3,Pairs$Round4,Pairs$Round5,Pairs$Round6,
        col="Grey",drawRect = "False", names=c("Round 1","Round 2","Round 3","Round 4","Round 5","Round 6"))
title(ylab="Score Difference",xlab="Round")
abline(h=7.015,col="red3",lwd=3,lty=2)
legend("topright",c("Mean Difference"),lwd=3,col=c("Red3"),lty=c(2),bty='y')