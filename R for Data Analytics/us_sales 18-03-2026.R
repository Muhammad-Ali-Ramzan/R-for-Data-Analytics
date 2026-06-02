us_sales=read.csv(file=file.choose())
head(us_sales)
sum(is.na(us_sales))
str(us_sales)


clean_sales <-us_sales [,c(-3, -4, -5, -6,-7)]

## head(clean_sales$Unit_Price)
## clean_sales$Unit_Price <- as.numeric(gsub(",", "", clean_sales$Unit_Price))

model = lm(Unit_Price~. , data=clean_sales)
summary(model)
summary.aov(model)

str(clean_sales)
str(us_sales)
model1 <- lm(Unit_Price~Sales.Channel + WarehouseCode + StoreID + ProductID + DiscountApplied + Unit_Cost, data = clean_sales)
summary(model1)
summary.aov(model1)
