# ANCOVA

# Essentially, ANCOVA helps to determine whether there are
# significant differences between groups after adjusting for
# the covariates. The key advantage of ANCOVA is that it helps to
# remove the variance from the dependent variable that is explained by
# the covariates, allowing a clearer comparison of the group effects.

# Example: Suppose we want to compare the effectiveness of three different
# teaching methods (Method A, Method B, and Method C) on students' final exam scores.
# However, we also want to account for the students' prior knowledge,
# which we measure using their scores on a pre-test. In this case,
# the teaching method is the independent variable, the final exam score is the dependent variable,
# and the pre-test score is the covariate. By using ANCOVA, we can adjust the final exam scores
# based on the pre-test scores, allowing us to more accurately assess the impact of the teaching methods.

Method<-c("Lecture", "Lecture" , "Lecture", "Lecture", "Lecture", 
          "CAI", "CAI","CAI","CAI","CAI", 
          "Blend", "Blend","Blend","Blend","Blend")
Inter.Marks<-c(4,3,5,2,1,8,6,7,4,5,7,9,10,12,12)
UG.Test<-c(6,5,6,4,4,8,5,9,7,6,9,8,11,12,15)
UG.Test
score<-data.frame(Method,Inter.Marks,UG.Test)
score

boxplot(Inter.Marks~Method,
        data=score,
        main="Score by Method",
        xlab = "Method", ylab="Score",
        col ="red", border="black")


model1 <- aov(UG.Test ~ Method, data = score)
summary(model1)
summary.aov(model1)

model2 <- aov(Inter.Marks ~ Method, data = score)
summary(model2)

model <- lm(UG.Test ~ Method + Inter.Marks, data = score)
summary(model)
summary.aov(model)

# Interaction plot (:)
model3 <- lm(UG.Test ~ Method * Inter.Marks, data = score)
summary(model3)
summary.aov(model3)


library(car)

ancova_model <- aov(UG.Test ~ Method + Inter.Marks, data = score)
summary(ancova_model)

Anova(ancova_model, type = "III")

###########----------------------------------
# Example: ANCOVA for Marketing Campaign
#---------------------------------------

data <- data.frame(
  sales = c(150,160,180,190,200,210,195,185,210,220,230,235),
  campaign = factor(rep(c("A","B","C"), each = 4)),
  budget = c(10,12,14,15,9,11,13,14,8,10,12,13)
)

# ===============================
# Example Scenarios (ANCOVA in BI)
# ===============================

# Marketing
# Dependent Variable: Sales revenue
# Factor (Group): Campaign type
# Covariate (Control): Ad spend
# Insight: Which campaign performs best after controlling for budget?

# HR Analytics
# Dependent Variable: Employee productivity
# Factor (Group): Department
# Covariate (Control): Experience
# Insight: Do departments differ in productivity after adjusting for experience?

# Retail
# Dependent Variable: Customer satisfaction
# Factor (Group): Store location
# Covariate (Control): Store size
# Insight: Are urban stores better after controlling for size?

# Manufacturing
# Dependent Variable: Defect rate
# Factor (Group): Machine type
# Covariate (Control): Operator experience
# Insight: Does machine type affect defects beyond experience level?


# ===========================================
# Business Intelligence Insights from ANCOVA
# ===========================================

# Marketing
# Use Case: Compare campaigns adjusting for budget
# Strategic Insight: Identify true ROI differences

# Finance
# Use Case: Compare branch profits adjusting for economic conditions
# Strategic Insight: Measure efficiency unbiased by market factors

# Operations
# Use Case: Compare shift productivity adjusting for machine runtime
# Strategic Insight: Assess process improvement effectiveness

# HR
# Use Case: Compare performance across teams adjusting for experience
# Strategic Insight: Fair evaluation of managers

# Sales Analytics
# Use Case: Compare regional sales adjusting for population
# Strategic Insight: Reveal true market penetration

##Create Dataset
data<- data.frame(
  method = factor(rep(c("A", "B"), each = 10)),
  study_hours = c(5,6,7,8,6,7,5,6,7,8,4,5,6,5,4,6,5,4,6,5),
  score = c(70,75,80,85,78,82,74,76,81,86,65,68,72,70,66,73,69,67,71,68)
)

head(data)


#Run ANCOVA Model
model<- lm(score~method + study_hours, data = data)
summary(model)
anova(model)


# Online vs Physical
data2 <- data.frame(
  type = factor(rep(c("Online", "Physical"), each = 5)),
  attendance = c(60,65,70,75,80, 55,60,65,70,60),
  marks = c(65,70,75,80,85,60,65,70,72,68)
)
lm(marks~type+attendance, data=data2)
