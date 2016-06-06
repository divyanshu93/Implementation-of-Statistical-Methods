mu <- 10
m <- 9.02
n <- 20
s <- 2.22
se <- s/sqrt(n)

tstat <- (m-mu)/se

pval1 <- 1 - pt(tstat,19)

test <- function(n, nsim, mu){
  x = rnorm(n)
  m <- mean(x)
  s <- sd(x)
  se <- s/sqrt(n)
  tstat2 <- (m - mu)/se
  pval2 <- 1 - pt(tstat2, n-1)
  
  return(pval2)
}

mct <- function(n = 20, nsim = 1000, mu = 10){
  pvals <- replicate(nsim, test(n, nsim, mu))
  psim <- sum(pvals<0.05)/nsim
  return (psim)
}

test(20,1000,10)
mct(n = 20, nsim = 1000, mu = 10)



