# what is the average Lung Capacity (LungCap) for people who smoke vs. those who do n
df=na.omit(df)
str(df)

df=read.csv(file=file.choose())
df %>%
  group_by(Smoke) %>%
  summarize(Average_LungCap = mean(LungCap, na.rm = TRUE))

#How many males and females are in the dataset?
df %>%
  count(Gender)

#what is the median age of people with a history of caesarean section (Caesarean)?

df %>%
  filter(Caesarean == "yes") %>%
  summarize(Median_Age = mean(Age, na.rm = TRUE))
df

#what is the relationship between age and lung capacity (LungCap)?
df %>%
  select(Age, LungCap) %>%
  cor()


#How does the average weight (Weight) differ based on the number of children (No.children)?

df %>% 
  group_by(No.children) %>% 
  summarize(Average_Weight = mean(Weight, na.rm = TRUE))



# What is the total number of individuals who have children (No.children > 0)?
df %>% 
  filter(No.children > 0) %>% 
  count()

#Create a new variable BMI (Body Mass Index) based on weight and height (BMI = Weight / (Height / 100)^2)

df %>%
  mutate(BMI = Weight / (Height / 100)^2)

#what are the average lung capacity and weight by gender?

df %>%
  group_by(Gender) %>%
  summarize(Average_LungCap = mean(LungCap, na.rm = TRUE),
            Average_Weight = mean(Weight, na.rm = TRUE))


# Checking for missing values in all columns
df %>%
  summarise_all(~ sum(is.na(.)))

# How many individuals are above the age of 60?
df %>%
  filter(Age > 60) %>%
  count()


df %>%
  mutate(Age_Group = case_when(
    Age < 5 ~ "Under 5",
    Age >= 5 & Age <= 10 ~ "5-10",
    Age > 10 ~ "Above 10"
  )) 

df %>%
  mutate(Age_Group = case_when(
    Age < 5 ~ "Under 5",
    Age >= 5 & Age <= 10 ~ "5-10",
    Age > 10 ~ "Above 10"
  )) %>% 
  group_by(Age_Group) %>%
  summarize(Average_LungCap = mean(LungCap, na.rm = TRUE))


#Select the only children related to health (eg,, LungCap, )
df %>% 
  summarise(unique_count = n_distinct(No.children))


df %>% 
  distinct(No.children) %>% 
  count()
