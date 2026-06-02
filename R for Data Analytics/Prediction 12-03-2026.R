# Here are several examples of multiple linear regression in R, where we predict a dependent variable.
# Example 1: Predicting House Prices Based on Multiple Factors
#
# we'll use a synthetic dataset to predict the price of houses based on square footage, number of rooms, and age.
# Step 1: Create Example Data
# Create example data
square_feet <- c(1500, 1800, 2400, 3000, 3500)
bedrooms <- c(3, 4, 3, 5, 4)
age <- c(10, 15, 20, 5, 8)
price <- c(400000, 500000, 600000, 700000, 650000)
# Combine into a data frame
data <- data.frame(square_feet, bedrooms, age, price)
# Step 2: Fit the Multiple Linear Regression Model
# Fit the multiple linear regression model
model <- lm(price ~ square_feet + bedrooms + age, data = data)
# View the model summary
summary(model)
summary.aov(model)
range(data$bedrooms)
range(data$square_feet)
range(data$age)

new_house1_data <- data.frame(square_feet = 3600, bedrooms = 4, age = 8)
predicted_price <- predict(model, new_house1_data)
print(predicted_price)

new_house2_data <- data.frame(square_feet = 3400, bedrooms = 4, age = 8)
predicted_price <- predict(model, new_house2_data)
print(predicted_price)


new_house3_data <- data.frame(square_feet = 3000, bedrooms = 5, age = 20)
predicted_price <- predict(model, new_house3_data)
print(predicted_price)


new_house4_data <- data.frame(square_feet = 2500, bedrooms = 5, age = 5)
predicted_price <- predict(model, new_house4_data)
print(predicted_price)
