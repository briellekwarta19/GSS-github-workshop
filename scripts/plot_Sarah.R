###variation in weights 
#slide38 from SDM Tools course 
weight1 <- c(1,1)
weight2 <- c(0.5,2)
weight3 <- c(1,3)

sims <- 1000
samps <- weights <- matrix(NA,nrow=sims,ncol=3)
for(i in 1:sims){
  samps[i,1] <- runif(1,weight1[1],weight1[2])
  samps[i,2] <- runif(1,weight2[1],weight2[2])
  samps[i,3] <- runif(1,weight3[1],weight3[2])
  
  weights[i,] <- samps[i,]/sum(samps[i,])
  
} 

#plot the weights 
plot(x = c(1,2,3),y = weights[1,],type = 'l',xlab = "Objective",ylab = "Weights",ylim = c(0,1),xaxt='n')
axis(side=1,at=c(1,2,3))
for(i in 2:sims){
  lines(x=c(1,2,3),y=weights[i,])
}