# Data Cleaning in Rstudio (with examples)

## 1. Load Packages and Example Data
library(conflicted)
library(tidyverse)
library(dplyr)
# Example 
df <- data.frame(
  id = c(1, 2, 3, 4, NA),
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, NA, 30, 35, 28),
  gender = c("F", "M", "M", "M", "F"),
  income = c("50000", "60000", "70000", "Not available", "80000")
)

df

 # 2. Handling Missing Values

## Remove rows with any missing values
library(dplyr)
df_clean <- df %>% drop_na()

### Replace missing values

df_filled <- df %>% 
  mutate(
    age = replace_na(age, mean(age, na.rm = TRUE)),
    id = replace_na(id, 0)
  )
df

# 3. Fixing data types

## Convert income (character) to numeric

#(Handling "not available")

df2 <- df %>% 
  mutate(
    income = na_if(income, "not available"),
    income = as.numeric(income)
  )

df_renamed <- df %>%
  rename(
    person_id = id,
    yearly_income = income
  )


