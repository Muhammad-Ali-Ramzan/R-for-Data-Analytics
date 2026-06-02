tips=read.csv(file=file.choose())

head(tips)

tips$gender <- as.factor(tips$gender)
tips$smoker <- as.factor(tips$smoker)
tips$day <- as.factor(tips$day)
tips$time <- as.factor(tips$time)

model <- lm(tip ~ total_bill + gender + smoker + day + time + size, data = tips)

summary(model)

range(tips$total_bill)
range(tips$tip)

levels(tips$gender)
levels(tips$smoker)
levels(tips$day)
levels(tips$time)



# Predicting tip for a new observation
new_data <- data.frame(
  total_bill = c(30, 50, 20, 40, 60),
  gender = c("Male", "Female", "Female", "Male", "Male"),
  smoker = c("No", "Yes", "No", "Yes", "No"),
  day =  c ("Sun", "Sat", "Fri", "Thur", "Sun"),
  time = c("Dinner", "Lunch", "Dinner", "Lunch", "Dinner"),
  size = c(3, 4, 2, 5, 6)
)

ttp=predict(model, new_data)
print(ttp)

new_data$tip=round(ttp,2)
print(new_data)
