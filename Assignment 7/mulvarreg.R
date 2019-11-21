data <- read.csv("C:/Users/ashpe/Desktop/Regression/auto-mpg.csv")
summary(data)
m <- lm(cbind(data$mpg,data$acceleration,data$horsepower) ~
          data$cylinders + data$displacement + data$weight + data$model.year)
summary(m)
mm <- manova(m)
mm
data$car.name<- NULL
data$horsepower[data$horsepower=='?'] <- NA
data$horsepower<- as.numeric(data$horsepower)
cor(data)
cov(data)
#Strong negative covariance between mpg, displacement, and weight. 
#As the vehicle size increases, the mpg would decrease. 
#Positive covariance with year of manufacture of vehicle