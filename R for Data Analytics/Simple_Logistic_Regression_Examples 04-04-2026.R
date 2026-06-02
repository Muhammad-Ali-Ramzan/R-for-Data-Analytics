  # 🔷 📊 GENERAL MODEL (use in all)
  
#   ```r
# model <- glm(Y ~ X, data = data, family = binomial)
# summary(model)
# exp(coef(model))   # Odds ratio
# ```
# 
# ---
  
  # 🧪 🔷 1️⃣ Education: Study Hours vs Pass
  
data <- data.frame(
  hours = c(1,2,3,4,5,6,7,8,9,10),
  pass  = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(pass ~ hours, data=data, family=binomial)
summary(model)
# 
# **❓ Question:** Does study time affect passing probability?
#   **🧠 Interpretation:** Positive coefficient → more hours increases pass probability.


  # 🧪 🔷 2️⃣ Education: Attendance vs Pass
  
data2 <- data.frame(
  attendance = c(50,55,60,65,70,75,80,85,90,95),
  pass = c(0,0,0,1,0,1,1,1,1,1)
)
model2 <- glm(pass ~ attendance, data=data2, family=binomial)
data2$prob <- predict(model2, type = "response")
data2$predicted <- ifelse(data2$prob > 0.5, 1, 0)
data2

# 
# **Interpretation:** Higher attendance → higher success chance.
# 

  # 💼 🔷 3️⃣ Business: Marketing Spend vs Purchase
  
data <- data.frame(
  spend = c(100,200,150,300,250,400,350,450,500,550),
  purchase = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(purchase ~ spend, data=data, family=binomial)


  # 💼 🔷 4️⃣ Business: Website Time vs Signup
  
data4 <- data.frame(
  time = c(1,2,3,4,5,6,7,8,9,10),
  signup = c(0,0,0,1,0,1,1,1,1,1)
)
model4 <- glm(signup ~ time, data=data4, family=binomial)
data4$prob <- predict(model4, type = "response")
data4$predicted <- ifelse(data4$prob > 0.5, 1, 0)
data4

# 🏥 🔷 5️⃣ Medical: Age vs Disease
  
data5 <- data.frame(
  age = c(20,25,30,35,40,45,50,55,60,65),
  disease = c(0,0,0,0,1,0,1,1,1,1)
)
model5 <- glm(disease ~ age, data=data5, family=binomial)
data5$prob <- predict(model5, data = data5, type = "response")
data5$predicted <-ifelse(data5$prob > 0.5, 1,0)
data5
summary(model5)
  # 🏥 🔷 6️⃣ Medical: BMI vs Diabetes
  
data <- data.frame(
  bmi = c(18,20,22,24,26,28,30,32,34,36),
  diabetes = c(0,0,0,0,1,0,1,1,1,1)
)
model <- glm(diabetes ~ bmi, data=data, family=binomial)


  # 🏭 🔷 7️⃣ Industry: Machine Temp vs Failure
  
data <- data.frame(
  temp = c(50,55,60,65,70,75,80,85,90,95),
  failure = c(0,0,0,0,1,0,1,1,1,1)
)
model <- glm(failure ~ temp, data=data, family=binomial)


  # 🏭 🔷 8️⃣ Industry: Pressure vs Defect
  
data <- data.frame(
  pressure = c(10,15,20,25,30,35,40,45,50,55),
  defect = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(defect ~ pressure, data=data, family=binomial)
data$predicted <- ifelse(data$prob > 0.5, 1, 0)
data$prob <- predict(model, type = "response")
summary(model)
data
  # 📈 🔷 9️⃣ Banking: Income vs Loan Approval
  
data <- data.frame(
  income = c(20,25,30,35,40,45,50,55,60,65),
  loan = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(loan ~ income, data=data, family=binomial)


  # 📈 🔷 🔟 Banking: Credit Score vs Default
  
data <- data.frame(
  score = c(300,350,400,450,500,550,600,650,700,750),
  default = c(1,1,1,1,0,1,0,0,0,0)
)
model <- glm(default ~ score, data=data, family=binomial)


  # 🎓 🔷 1️⃣1️⃣ Education: GPA vs Admission
  
data <- data.frame(
  gpa = c(2.0,2.2,2.5,2.7,3.0,3.2,3.5,3.7,3.8,4.0),
  admit = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(admit ~ gpa, data=data, family=binomial)


  # 🛒 🔷 1️⃣2️⃣ Retail: Visits vs Purchase
  
data <- data.frame(
  visits = c(1,2,3,4,5,6,7,8,9,10),
  buy = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(buy ~ visits, data=data, family=binomial)


  # 🚗 🔷 1️⃣3️⃣ Transport: Speed vs Accident
  
data <- data.frame(
  speed = c(30,40,50,60,70,80,90,100,110,120),
  accident = c(0,0,0,0,1,0,1,1,1,1)
)
model <- glm(accident ~ speed, data=data, family=binomial)


  # 🌐 🔷 1️⃣4️⃣ IT: Login Attempts vs Breach
  
data <- data.frame(
  attempts = c(1,2,3,4,5,6,7,8,9,10),
  breach = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(breach ~ attempts, data=data, family=binomial)


  # 🏋️ 🔷 1️⃣5️⃣ Fitness: Exercise vs Weight Loss
  
data <- data.frame(
  hours = c(1,2,3,4,5,6,7,8,9,10),
  loss = c(0,0,0,1,0,1,1,1,1,1)
)
model <- glm(loss ~ hours, data=data, family=binomial)


  # 📈 🔷 OPTIONAL: Visualization (Use for any dataset)
  
library(ggplot2)

ggplot(data, aes(x = hours, y = pass)) +
  geom_point() +
  stat_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE)
# 
# ---
#   
#   # 🧠 🔥 MASTER INTERPRETATION (USE ANYWHERE)
#   
#   > The logistic regression results indicate that the independent variable has a significant effect on the probability of the outcome. A positive coefficient suggests that increasing the predictor increases the likelihood of the event occurring. The odds ratio further quantifies this effect, showing how many times the odds change for a one-unit increase in the predictor.
# 
# ---
#   
#   # 🚀 NEXT LEVEL (if needed)
#   
#   I can extend this to:
#   
#   * 📊 Multiple logistic regression (real datasets)
# * 📈 ROC curve + AUC + confusion matrix
# * 🧪 Medical diagnosis models
# * 📊 Shiny dashboard for prediction
# 
# Just tell me 👍
