data <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data")
colnames(data) <- c("sepal_length", "sepal_width", "petal_length","petal_width", "species")
summary(data)
plot(data)
cor(data$petal_length,data$petal_width)
fit <- lm(data$petal_length ~ data$petal_width)
fit
par(mfrow=c(2,2)) # set the plot area to 2 plots by 2 plots
plot(fit)
residuals(fit)
summary(fit)
data2<- subset(data, data$species!='Iris-setosa')
plot(data2)
cor(data2$petal_length,data2$petal_width)
fit <- lm(data2$petal_length ~ data2$petal_width)
fit
#correlation dropped from 0.96 to 0.82-not good.
#reduced our degrees of freedom from 147 to 98.
#the R-squared dropped significantly from 0.926 to 0.6779.
#The f-statistic dropped from 1800 to 200. Overall we cannot
#exclude setosa from the evaluation.

