#Data import
country <- read.csv(file = file.choose())
head(country)
str(country)

#Data Cleaning
#rm column 6
country <- country[, -6]
str(country)
country <- na.omit(country)
round(cor(country),2)

#lm
model <- lm(gdp ~. , data= country)
summary(model)
summary.aov(model)

#add just significant variables
short_df <- country[,c("gdp" , "surface_area" ,"unemployment" , "imports" ,"exports" , "population", "urban_population" ,
                       "secondary_school_enrollment_male" , "pop_density" , "tourists")]

model1 <- lm(gdp ~. ,data = short_df)
summary(model1)
summary.aov(model1)
str(country)
str(short_df)
