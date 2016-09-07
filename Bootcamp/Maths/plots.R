rm(list=ls())

absc <- c(-1,0,1,2)
ord <- c(1/2, 1, 2,4)

pdf("plot.pdf")
    plot(ord~ absc, ylim=c(-1,5))
    abline(h=0)
    abline(v=0)

    plot(log(absc, exp(1)))
dev.off()
