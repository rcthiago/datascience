#01
ptm <- proc.time()

for (i in 1:1000){
  tapply(DT$pwgtp15,DT$SEX,mean)
}
proc.time() - ptm

#02
ptm <- proc.time()

for (i in 1:1000){
  DT[,mean(pwgtp15),by=SEX]
}
proc.time() - ptm

#03
ptm <- proc.time()

for (i in 1:1000){
  sapply(split(DT$pwgtp15,DT$SEX),mean)
}
proc.time() - ptm

#04
ptm <- proc.time()

for (i in 1:1000){
  mean(DT[DT$SEX==1,]$pwgtp15);
  mean(DT[DT$SEX==2,]$pwgtp15);
}
proc.time() - ptm
