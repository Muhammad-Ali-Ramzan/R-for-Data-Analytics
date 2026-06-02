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


new_house4_data <- data.frame(square_feet = 2500, bedrooms = 3, age = 5)
predicted_price <- predict(model, new_house4_data)
print(predicted_price)


new_house5_data <- data.frame(square_feet = 1500, bedrooms = 5, age = 5)
predicted_price <- predict(model, new_house5_data)
print(predicted_price)


new_house6_data <- data.frame(square_feet = 1500, bedrooms = 5, age = 5)
predicted_price <- predict(model, new_house6_data)
print(predicted_price)




#---------------------------------------------------------------------------
# Load the mtcars dataset
data(mtcars)
# View the first few rows
head(mtcars)
# Step 2: Fit the Multiple Linear Regression Model
# Fit the model to predict mpg based on disp, wt, and hp
model_mtcars <- lm(mpg ~ disp + wt + hp, data = mtcars)
# View the model summary
summary(model_mtcars)
# Step 3: Predictions
# Predict mpg for a car with specific features

round(cor(mtcars[, c("mpg", "disp", "wt", "hp")]), 2)

range(mtcars$disp)
range(mtcars$wt)
range(mtcars$hp)

new_data1_mtcars <- data.frame(disp = 160, wt = 2.9, hp = 110)
predicted_mpg <- predict(model_mtcars, new_data1_mtcars)
print(predicted_mpg)


new_data2_mtcars <- data.frame(disp = 140, wt = 2.5, hp = 110)
predicted_mpg <- predict(model_mtcars, new_data2_mtcars)
print(predicted_mpg)

new_data3_mtcars <- data.frame(disp = 80, wt = 2.5, hp = 110)
predicted_mpg <- predict(model_mtcars, new_data3_mtcars)
print(predicted_mpg)


new_data4_mtcars <- data.frame(disp = 100, wt = 5, hp = 110)
predicted_mpg <- predict(model_mtcars, new_data4_mtcars)
print(predicted_mpg)

new_data5_mtcars <- data.frame(disp = 90, wt = 5, hp = 330)
predicted_mpg <- predict(model_mtcars, new_data5_mtcars)
print(predicted_mpg)


new_data6_mtcars <- data.frame(disp = 250, wt = 1.9, hp = 150)
predicted_mpg <- predict(model_mtcars, new_data6_mtcars)
print(predicted_mpg)

new_data7_mtcars <- data.frame(disp = 350, wt = 4.0, hp = 250)
predicted_mpg <- predict(model_mtcars, new_data7_mtcars)
print(predicted_mpg)

new_data8_mtcars <- data.frame(disp = 75, wt = 1.8, hp = 65)
predicted_mpg <- predict(model_mtcars, new_data8_mtcars)
print(predicted_mpg)

new_data9_mtcars <- data.frame(disp = 200, wt = 4.5, hp = 90)
predicted_mpg <- predict(model_mtcars, new_data9_mtcars)
print(predicted_mpg)

new_data10_mtcars <- data.frame(disp = 400, wt = 2.0, hp = 300)
predicted_mpg <- predict(model_mtcars, new_data10_mtcars)
print(predicted_mpg)
#-----------------------------


# Example 3: Predicting Employee Salary Based on Experience and Education Level
#
# Let's use a synthetic dataset where we predict the salary of employees based on their years of experience
# Step 1: Create Example Data
# Create synthetic data
experience <- c(1, 2, 5, 7, 10)
education_level <- c(1, 2, 3, 4, 5) # 1: High School, 2: Associate, 3: Bachelor's, 4: Master's, 5: PhD
salary <- c(30000, 35000, 50000, 60000, 75000)

# Combine into a data frame
data <- data.frame(experience, education_level, salary)
round(cor(data),2)
# Step 2: Fit the Multiple Linear Regression Model
model_salary <- lm(salary ~ experience + education_level, data = data)

# View the model summary
summary(model_salary)


range(data$experience)
# Step 3: Predictions
# Predict the salary for an employee with 6 years of experience and 
# a Master's degree (education_level = 4)
new_data1_salary <- data.frame(experience = 1.5, education_level = 4)
predicted_salary <- predict(model_salary, new_data1_salary)
print(predicted_salary)


new_data2_salary <- data.frame(experience = 2, education_level = 1)
predicted_salary <- predict(model_salary, new_data2_salary)
print(predicted_salary)

new_data3_salary <- data.frame(experience = 9, education_level = 1)
predicted_salary <- predict(model_salary, new_data3_salary)
print(predicted_salary)

new_data4_salary <- data.frame(experience = 5, education_level = 3)
predicted_salary <- predict(model_salary, new_data4_salary)
print(predicted_salary)

new_data5_salary <- data.frame(experience = 10, education_level = 5)
predicted_salary <- predict(model_salary, new_data5_salary)
print(predicted_salary)

new_data6_salary <- data.frame(experience = 0, education_level = 4)
predicted_salary <- predict(model_salary, new_data6_salary)
print(predicted_salary)

new_data7_salary <- data.frame(experience = 15, education_level = 3)
predicted_salary <- predict(model_salary, new_data7_salary)
print(predicted_salary)

new_data8_salary <- data.frame(experience = 4, education_level = 2)
predicted_salary <- predict(model_salary, new_data8_salary)
print(predicted_salary)

new_data9_salary <- data.frame(experience = 0, education_level = 5)
predicted_salary <- predict(model_salary, new_data9_salary)
print(predicted_salary)



#----------------------



# Create synthetic wine dataset
fixed.acidity <- c(7.4, 7.8, 7.8, 11.2, 7.4)
pH <- c(3.51, 3.20, 3.26, 3.16, 3.26)
alcohol <- c(9.4, 9.8, 9.8, 9.8, 9.4)
quality <- c(5, 5, 6, 6, 5)

# Combine into a data frame
data_wine <- data.frame(fixed.acidity, pH, alcohol, quality)

# Step 2: Fit the Multiple Linear Regression Model
# Fit the model to predict wine quality based on fixed.acidity, pH, and alcohol
model_wine <- lm(quality ~ fixed.acidity + pH + alcohol, data = data_wine)

# View the model summary
summary(model_wine)

# Step 3: Predictions
# Predict the quality for a wine with specific chemical properties
new_data1_wine <- data.frame(fixed.acidity = 10.0, pH = 3.1, alcohol = 10.5)
predicted_quality1 <- predict(model_wine, new_data1_wine)
print(predicted_quality1)

new_data2_wine <- data.frame(fixed.acidity = 6.5, pH = 3.6, alcohol = 8.5)
predicted_quality2 <- predict(model_wine, new_data2_wine)
print(predicted_quality2)

new_data3_wine <- data.frame(fixed.acidity = 7.5, pH = 3.3, alcohol = 9.5)
predicted_quality3 <- predict(model_wine, new_data3_wine)
print(predicted_quality3)

new_data4_wine <- data.frame(fixed.acidity = 8.0, pH = 3.4, alcohol = 12.0)
predicted_quality4 <- predict(model_wine, new_data4_wine)
print(predicted_quality4)

new_data5_wine <- data.frame(fixed.acidity = 12.5, pH = 2.9, alcohol = 9.0)
predicted_quality5 <- predict(model_wine, new_data5_wine)
print(predicted_quality5)

