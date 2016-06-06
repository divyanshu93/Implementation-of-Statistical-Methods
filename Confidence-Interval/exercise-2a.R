#Exercise 2-a
#Drawing Q-Q plot for a sample data
#X is vector of sample data values of sugar level in children's cereal
X = c(40.3, 55, 45.7, 43.3, 50.3, 45.9, 53.5, 43, 44.2, 44, 47.4, 44, 33.6, 55.1,
      48.8, 50.4, 37.8, 60.3, 46.5)
#Y is vector of sample data values of sugar level in adult's cereal
Y = c(20, 30.2, 2.2, 7.5, 4.4, 22.2, 16.6, 14.5, 21.4, 3.3, 6.6, 7.8, 10.6, 16.2,
      14.5, 4.1, 15.8, 4.1, 2.4, 3.5, 8.5, 10, 1, 4.4, 1.3, 8.1, 4.7, 18.4)

#qqnorm plots a normal Q-Q plot for the sample data
qqnorm(X)
#qqline plots a line for the sample data
qqline(X)

qqnorm(Y)
qqline(Y)