## Data Sensing
  #1
# data Sensing

df1 <- data.frame(
  Group = rep(c("A", "B", "C"), each = 10),
  Score = c(rnorm(10, 50, 5),
            rnorm(10, 55, 5),
            rnorm(10, 60, 5)
  )
)

anova_result <- lm(Score~Group, data = df1)
summary(df1)


  #2
df2 <- data.frame(
  Group = rep(c("A", "B", "C"), each = 10),
  Score = c(rnorm(10,70,4),
            rnorm(10,75,4),
            rnorm(10,80,4))
)

  #3
df3 <- data.frame(
  Group=rep(c("Control","Treatment", "Treatment2"), each = 10),
  Score =    c(rnorm(10,30,6),
              rnorm(10,40,6),
              rnorm(10,50,6))
)

  #4
df4 <- data.frame(
  Group = rep(c("Freshman", "Sophomore", "Senior"), each = 10),
  Score = c(rnorm(10,65,7),
            rnorm(10,70,7),
            rnorm(10,78,7))
)

  #5
df6 <- data.frame(
  Group = rep(c("Diet1", "Diet2", "Diet3"), each = 10),
  Score = c(rnorm(10, 5, 8),
            rnorm(10, 7, 8),
            rnorm(10, 9, 8) )
)

  #6
df6 <- data.frame(
  Group = rep(c("Beginner", "Intermediate", "Advanced"), each = 10),
  Score = c(rnorm(10, 40, 8),
            rnorm(10, 55, 8),
            rnorm(10, 70, 8) )
)


#7
df7 <- data.frame(
  Group = rep(c(rnorm(10, 20, 3), each = 10),
                rnorm(10, 25, 3),
                rnorm(10, 30, 5))
)

Model1 <- aov(Score~Group, data = df1)
summary(Model1)

Model1 <- lm(Score~Group, data = df1)
summary(Model1)


#8
df8 <- data.frame(
  Group = rep(c("Small", "Medium", "Large"), each = 10),
  Score = c(rnorm(10, 100, 10),
            rnorm(10, 110, 10),
            rnorm(10, 130, 10))
  )


#9
df9 <- data.frame(
  Group = rep(c("Urban", "Suburban", "Rural"), each = 10),
  Score = c(rnorm(10, 85, 5),
            rnorm(10, 75, 5),
            rnorm(10, 65, 5))
)

Model9 = aov(Score ~ Group, data = df9)
summary(Model9)
summary.aov(Model9)
#10
df10 <- data.frame(
  Group = rep (c("Type1", "Type2", "Type3"), each = 10),
  Score = c(rnorm(10, 10, 2),
            rnorm(10, 15, 2),
            rnorm(10, 20, 2))
)

#11
df11 <- data.frame(
  Group = rep (c("Red", "Blue", "Green"), each = 10),
  Score = c(rnorm (10, 45, 6),
            rnorm  (10, 50, 6),
            rnorm  (10, 60, 6))
)

#12
df12 <- data.frame(
  Group = rep (c("PlanA", "PlanB", "PlanC"), each = 10),
  Score = c(rnorm (10, 120, 15),
            rnorm (10, 140, 15),
            rnorm (10, 160, 15))
)

#13
df13 <- data.frame(
  Group = rep (c("Mild", "Moderrate", "Severe"), each = 10),
  Score = c(rnorm(10, 20, 4),
            rnorm(10, 35, 4),
            rnorm(10, 50, 4))
)

#14
df14 <- data.frame(
  Group = rep (c("North", "South", "West"), each = 10),
  Score = c(rnorm (10, 200, 20),
            rnorm  (10, 220, 20),
            rnorm  (10, 250, 20))
)

#15
df15 <- data.frame(
  Group = rep (c("Group1", "Group2", "Group3"), each = 10),
  Score = c(rnorm (10, 5, 0.5),
            rnorm (10, 6, 0.5),
            rnorm (10, 7, 0.5))
)

Model1 <- lm(Score ~ Group, data = df1)
summary(Model1)
