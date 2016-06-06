n1 <- 500
n2 <- 400
x1 <- 2887
x2 <- 2635
s1 <- 412
s2 <- 365
se <- sqrt((s1^2/n1)+(s2^2/n2))
ci <- (x1-x2) + c(-1,1)*qnorm(0.975)*se
zstat <- (x1-x2)/se
pval <- 1 - pnorm(zstat)