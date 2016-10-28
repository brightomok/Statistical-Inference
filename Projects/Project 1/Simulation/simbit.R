## Generating 1000 simulations of 40 point exponentially distributed samples

set.seed(22)
mns = NULL
sd = NULL
dat = NULL
for (i in 1:1000) {
       dat = c(dat, rexp(40))
       mns = c(mns, mean(rexp(40)))
       sd = c(sd, sd(rexp(40)))
}

## Sample mean is centered at .9912 and should be at 1 
hist(mns)
## Standard deviation is a t .9694 and should be at 1
hist(sd)
## Distribution should look like an exponential
hist(dat)
curve(exp(-x), from = 0, to = 10, n = 100)