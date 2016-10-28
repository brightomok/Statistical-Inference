n <- 100; nsim <- 1000
x1 <- rnorm(n); x2 <- rnorm(n); x3 <-rnorm(n)
betas <- sapply(1 : nosim, function(i){
       y <- x1 + rnorm(n,sd = .3)
       c(coef(lm(y~x1))[2],coef(lm(y~x1+x2))[2],coef(lm(y~x1+x2+x3))[2])
})

round(apply(betas,1,sd), 5)