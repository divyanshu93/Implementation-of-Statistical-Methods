#Exercise 2-b
#computing ratio of sample variance of the two distribution using sample data
X = c(40.3, 55, 45.7, 43.3, 50.3, 45.9, 53.5, 43, 44.2, 44, 47.4, 44, 33.6, 55.1,
      48.8, 50.4, 37.8, 60.3, 46.5)
Y = c(20, 30.2, 2.2, 7.5, 4.4, 22.2, 16.6, 14.5, 21.4, 3.3, 6.6, 7.8, 10.6, 16.2,
      14.5, 4.1, 15.8, 4.1, 2.4, 3.5, 8.5, 10, 1, 4.4, 1.3, 8.1, 4.7, 18.4)
#sd() function returns standard deviation for sample data X
x.sigma <- sd(X, na.rm = FALSE)
#sd() function returns standard deviation for sampel data Y 
y.sigma <- sd(Y, na.rm = FALSE)
#length of X
x.n <- length(X)
#length of Y
y.n <- length(Y)

alpha = 0.05
#computing confidence interval for ratio of sample variance of X and Y
ci <- ((x.sigma/y.sigma)^2)*c(1/(qf(1 - (alpha/2),x.n - 1, y.n - 1)), 1/(qf(alpha/2, x.n - 1, y.n - 1)))

#> ci
#[1] 0.3102977 1.7564758
