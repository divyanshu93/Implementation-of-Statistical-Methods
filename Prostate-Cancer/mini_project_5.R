#read data file
d<-read.csv("D:/UTD Stats/mini_project-5/prostate_cancer.csv",header = TRUE)
#scatterplots between PSA and other variables
plot(cancervol, psa)
plot(weight, psa)
plot(age, psa)
plot(benpros, psa)
plot(vesinv, psa)
plot(capspen, psa)
plot(gleason, psa)
##ScatterPlot(cancervol, psa, col.out30 = "red")
#developing linear regeression model with cancervol as predictor variable
cansq <- sqrt(cancervol)
fit <- lm(psa~sqrt(cansq), data = d)
summary(fit)
abline(fit)
#building regression diagnostics graphs for our model to check assumptions
plot(fit)
#durbin watson test for checking autocorrelation assumption
dwtest(fit)
#dnew <- d[26,]
#fitnew <- lm(psa~cancervol, data = dnew)
#predict(fitnew)
##mini6
#summary(fitnew5)
############
#developing linear regeression model with cancervol and capspen as predictor variables
capsq <- sqrt(capspen)
fitnew <- lm(psa~sqrt(cansq) + sqrt(capsq), data = d)
plot(fitnew)
summary(fitnew)
abline(fitnew)
#durbin watson test for checking autocorrelation assumption
dwtest(fitnew)