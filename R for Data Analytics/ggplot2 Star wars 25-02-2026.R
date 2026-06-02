#Load Libraries & dataset
# ___________________
library(ggplot2)
library(dplyr)
data("starwars")
head(starwars)


# 1️⃣** geom_point() - Scatter Plots (StarWars Variables**)

### ** Q1. Plot height vs mass
ggplot(starwars, aes(x=height, y= mass)) +
  geom_point()

### Q2. Color Points by gender
ggplot(starwars, aes(x= height, y=mass, colour = gender))+
  geom_point()

### Q3. Add Transparency
ggplot(starwars, aes(x= height, y = mass, color = species)) +
  geom_point(alpha = 0.5)

### Q4. Size Points by birth_year
ggplot(starwars, aes(x= height, y = mass, color = gender, size = birth_year)) +
  geom_point(alpha = 0.6)

### Q5. Add Title + Theme
ggplot(starwars, aes(x= height, y= mass, colour = gender)) +
  geom_point() +
  labs(title = "Starwars Character Mass vs Height") +
  theme_minimal()


## 2️⃣ ** geom_bar() - Bar Plots (Categorical Visuals)

### **Q6. Count of Characters by species
ggplot(starwars, aes(x= species)) +
  geom_bar()

### Q7. Bar color by gender
ggplot(starwars, aes(x= species, fill = gender)) +
  geom_bar()

### Q8. Horizontal bars
ggplot(starwars, aes(x= species, fill = gender)) +
  geom_bar() +
  coord_flip()

### Q9. Side-by-Side Bars
ggplot(starwars, aes(x= species, fill = gender)) +
  geom_bar (position = "dodge")

### Q10. Proportion bar chart
ggplot(starwars, aes(x= species, fill = gender)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")

