h_rent=read.csv(file=file.choose())
head(h_rent)
str(h_rent)
sum(is.na(h_rent))

#lm all over data
model <- lm(Rent~. , data = h_rent)
summary(model)
summary.aov(model)

#lm of significant values
model1 <- lm(Rent ~ BHK + Size + Floor + Area.Type + Bathroom, data = h_rent)
summary(model1)
summary.aov(model1)
