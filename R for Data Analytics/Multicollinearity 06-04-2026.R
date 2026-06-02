# join example
# Load dplyr
library(dplyr)
# Create two data frames
df1 <- data.frame(id= 1:5, name = c("Alice", "Bob", "Charlie", "David", "Eva"))
df2 <- data.frame(id= c (3,4,5), age = c(25,30,35))

## Perform inner join'
result <- df1 %>% inner_join(df2, by = "id")
print(result)

#perform left join
result<- df1 %>% left_join(df2, by = "id")
print(result)


#perform right join
result<- df2 %>% right_join(df1, by = "id")
print(result)

#perform full join
result <- df1 %>% full_join(df2, by = "id")
print(result)

#perform anti join
result <- df1 %>% anti_join(df2,by = "id")
print(result)

##############
#create two data frames
df1 <- data.frame(id = 1:3, value = c(10,20,30))
df2 <- data.frame(id = c(1,2,3), threshold = c(15,25,35))
#perform left join with a custom condition
result <- df1 %>%
  left_join(df2, by = "id") %>%
  filter(value > threshold)
print(result)

##############
