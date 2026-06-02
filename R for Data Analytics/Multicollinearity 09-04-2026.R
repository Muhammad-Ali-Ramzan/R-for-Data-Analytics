# 1. Create emp Data Frame
emp_df = data.frame(
  emp_id = c(1, 2, 3, 4, 5, 6),
  name = c("Smith", "Rose", "williams", "Jones", "Brown", "Brown"),
  superior_emp_id = c(1, 1, 1, 2, 2, 2),
  dept_id = c(10, 20, 10, 10, 40, 50),
  dept_branch_id = c(101, 102, 101, 101, 104, 105)
)

# Create dept Data Frame
dept_df = data.frame(
  dept_id = c(10, 20, 30, 40),
  dept_name = c("Finance", "Marketing", "Sales", "IT"),
  dept_branch_id = c(101, 102, 103, 104)
)

print(emp_df)
print(dept_df)

# ==========================================
# 2. Using dplyr and merge for Joins
# ==========================================
library(dplyr)

# Using dplyr: Join on multiple columns
df2 <- emp_df %>% inner_join(dept_df, by = c('dept_id' = 'dept_id', 'dept_branch_id' = 'dept_branch_id'))
df2
# Using dplyr when column names are the same
df2 <- emp_df %>% inner_join(dept_df, by = c('dept_id', 'dept_branch_id'))
df2
# Using merge function (Base R)
df2 <- merge(x = emp_df, y = dept_df, by.x = c("dept_id", "dept_branch_id"), by.y = c("dept_id", "dept_branch_id"))
df2
# Using merge when column names are the same
df2 <- merge(x = emp_df, y = dept_df, by = c("dept_id", "dept_branch_id"))


# ==========================================
# 3. Joins with Multiple Small Data Frames
# ==========================================
# Create dataframe 1
my_dataframe1 = data.frame(id = c(2, 1, 3), gender = c('m', 'm', 'f'))
print(my_dataframe1)

# Create dataframe 2
my_dataframe2 = data.frame(id = c(4, 3, 1), name = c('shyam', 'sravani', 'vamsi'))
print(my_dataframe2)

# Create dataframe 3
my_dataframe3 = data.frame(id = c(4, 3, 2), marks = c(79, 80, 97))
print(my_dataframe3)

# Inner Join (Natural Join: joins only the matched rows based on the column specified)
print(merge(x = my_dataframe1, y = my_dataframe2, by = "id"))

# Left Join
print(merge(x = my_dataframe1, y = my_dataframe2, by = "id", all.x = TRUE))

# Right Join
print(merge(x = my_dataframe1, y = my_dataframe2, by = "id", all.y = TRUE))

# Outer (Full) Join
print(merge(x = my_dataframe1, y = my_dataframe2, by = "id", all = TRUE))

# Cross Join
print(merge(x = my_dataframe1, y = my_dataframe2, by = NULL))


# ==========================================
# 4. Joining More Than Two Data Frames 
# ==========================================
library(tidyverse)

# Join three dataframes based on id column using reduce
# Inner Join
print(list(my_dataframe1, my_dataframe2, my_dataframe3) %>% reduce(inner_join, by = 'id'))

# Left Join
print(list(my_dataframe1, my_dataframe2, my_dataframe3) %>% reduce(left_join, by = 'id'))

# Right Join
print(list(my_dataframe1, my_dataframe2, my_dataframe3) %>% reduce(right_join, by = 'id'))

# Outer (Full) Join
print(list(my_dataframe1, my_dataframe2, my_dataframe3) %>% reduce(full_join, by = 'id'))