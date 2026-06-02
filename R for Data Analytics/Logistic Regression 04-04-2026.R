
# Simple Logistic Regression

data <- data.frame(
  hours = c(1,2,3,4,5,6,7,8,2,3,4,5),
  pass  = c(0,0,0,0,1,1,1,1,0,0,1,1)
)

data
model <- glm(pass ~ hours, data = data, family = binomial)
summary(model)


# Predict probability
data$prob <- predict(model, type = "response")

data

data$predicted <- ifelse(data$prob > 0.5, 1, 0)

data

library(ggplot2)

ggplot(data, aes(x = hours, y = pass)) +
  geom_point() +
  stat_smooth(method = "glm", method.args = list(family = "binomial")) +
  labs(title = "Logistic Regression Curve")

