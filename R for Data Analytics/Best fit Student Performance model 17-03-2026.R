student_performance=read.csv(file=file.choose())
head(student_performance)
str(student_performance)
summary(student_performance)


sum(is.na(student_performance))   ## to check if any Na in data
str(student_performance)
round(cor(student_performance[-5]),2)
model <- lm(total_score~. , data = student_performance)   ## all data linear model
summary(model)
summary.aov(model)

model1 = lm(total_score~weekly_self_study_hours+grade, data = student_performance) ## just two variables linear model
summary(model1)
summary.aov(model1)


