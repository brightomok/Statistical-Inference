Ryan Tillis - Statistical Inference - Data Science - Quiz 2 - Coursera
================
<a href="http://www.ryantillis.com"> Ryan Tillis </a>
July 25, 2016

Statistical Inference Quiz 2
----------------------------

This is Quiz 2 from the Statistical Inference course in the Data Science Specialization from John's Hopkins.

### Questions

<hr>
<font size="+2">1. </font> CWhat is the variance of the distribution of the average an IID draw of n observations from a population with mean μ and variance σ2.

<hr>
<font size="+1"> <b>

-   σ2/n

</b> </font>

<hr>
<hr>
<font size="+2">2. </font> Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally distributed with a mean of 80 (mm Hg) and a standard deviation of 10. About what is the probability that a random 35-44 year old has a DBP less than 70?

<hr>
<font size="+1"> <b>

-   16%

</b> </font>

<hr>
``` r
pnorm(70, mean = 80, sd = 10)
```

    ## [1] 0.1586553

<hr>
<font size="+2">3. </font> Brain volume for adult women is normally distributed with a mean of about 1,100 cc for women with a standard deviation of 75 cc. What brain volume represents the 95th percentile?

<hr>
<font size="+1"> <b>

-   approximately 1223

</b> </font>

<hr>
``` r
qnorm(0.95, mean = 1100, sd = 75)
```

    ## [1] 1223.364

<hr>
<font size="+2">4. </font> Refer to the previous question. Brain volume for adult women is about 1,100 cc for women with a standard deviation of 75 cc. Consider the sample mean of 100 random adult women from this population. What is the 95th percentile of the distribution of that sample mean?

<hr>
<font size="+1"> <b>

-   approximately 1112 cc

</b> </font>

<hr>
``` r
qnorm(0.95, mean = 1100, sd = 75/sqrt(100))
```

    ## [1] 1112.336

<hr>
<font size="+2">5. </font> You flip a fair coin 5 times, about what's the probability of getting 4 or 5 heads?

<hr>
<font size="+1"> <b>

-   19%

</b> </font>

<hr>
``` r
#Probability of being stricly greater than 3 heads (4 or 5)
pbinom(3, size = 5, prob = 0.5, lower.tail = FALSE)
```

    ## [1] 0.1875

<hr>
<font size="+2">6. </font> The respiratory disturbance index (RDI), a measure of sleep disturbance, for a specific population has a mean of 15 (sleep events per hour) and a standard deviation of 10. They are not normally distributed. Give your best estimate of the probability that a sample mean RDI of 100 people is between 14 and 16 events per hour?

<hr>
<font size="+1"> <b>

-   68% (within 1 sd)

</b> </font>

<hr>
``` r
pnorm(16, mean = 15, sd = 1) - pnorm(14, mean = 15, sd = 1)
```

    ## [1] 0.6826895

<hr>
<font size="+2">7. </font> Consider a standard uniform density. The mean for this density is .5 and the variance is 1 / 12. You sample 1,000 observations from this distribution and take the sample mean, what value would you expect it to be near?

<hr>
<font size="+1"> <b>

-   0.5

</b> </font>

<hr>
``` r
x <- rnorm(1000,mean=.5,sd=sqrt(1/12))
mean(x)
```

    ## [1] 0.5101121

<hr>
<font size="+2">8. </font> The number of people showing up at a bus stop is assumed to be Poisson with a mean of 5 people per hour. You watch the bus stop for 3 hours. About what's the probability of viewing 10 or fewer people?

<hr>
<font size="+1"> <b>

-   0.12

</b> </font>

<hr>
``` r
ppois(10,15,lower.tail = TRUE)
```

    ## [1] 0.1184644

<hr>
See more at: <http://www.ryantillis.com/>

<hr>
