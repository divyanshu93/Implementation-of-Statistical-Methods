#Exercise 2-c
#computing difference in two means with 95% confidence interval 
X = c(40.3, 55, 45.7, 43.3, 50.3, 45.9, 53.5, 43, 44.2, 44, 47.4, 44, 33.6, 55.1,
      48.8, 50.4, 37.8, 60.3, 46.5)
Y = c(20, 30.2, 2.2, 7.5, 4.4, 22.2, 16.6, 14.5, 21.4, 3.3, 6.6, 7.8, 10.6, 16.2,
      14.5, 4.1, 15.8, 4.1, 2.4, 3.5, 8.5, 10, 1, 4.4, 1.3, 8.1, 4.7, 18.4)
#sample mean of X
x.mean <- mean(X)
#sampel mean of Y
y.mean <- mean(Y)
#estimated difference in two means
d.mean <- mean(X) - mean(Y)

alpha <- 0.25
#length of X
x.n <- length(X)
#length of Y
y.n <- length(Y)
#standard deviation of X
x.sigma <- var(X)
#standard deviation of Y
y.sigma <- var(Y)
#computing pooled sample variance for the two sample data assuming the variance of two distributions to be equal
ssp <- ((x.n - 1)*(x.sigma) + (y.n - 1)*(y.sigma))/x.n + y.n -2
#pooled standard deviation
sp<- sqrt(ssp)
#computing confidence interval for difference in two means using t-distribution
ci <- d.mean + c(-1, 1) * qt(1 -(alpha/2), df = (x.n + y.n - 2)) * sp*sqrt(1/(x.n) + 1/(y.n))

#> ci
#[1] 29.37357 43.90876
