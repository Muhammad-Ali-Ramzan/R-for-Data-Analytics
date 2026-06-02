##Install Required Packages
install.packages("multcompView")
install.packages("ggthemes")
# One way Anova with Lettering

#Load Appropriate Libraries
library(ggplot2)
library(ggthemes)
library(multcompView)
library(dplyr)

# analysis of variance
# anova <- lm(weight ~ feed, data = chickwts)
test <- aov(weight ~ feed, data = chickwts)
test
# Tukey's test
# anova=aov(anova)
testtk <- TukeyHSD(test)
testtk
plot(testtk)
plot(testtk, las=2)
par(mar = c(3,13,3,3))
plot(testtk, las=2)


#tk<-TukeyHSD(aov(anova), "ltype")
dt <-chickwts %>% 
  group_by(feed) %>% 
  summarise(w=mean(weight), sd= sd(weight)) %>% 
  arrange(desc(w))
dt



ggplot(dt, aes(feed,w))+
  geom_bar(stat = "identity", aes(fill=w), show.legend = FALSE)+
  geom_errorbar(aes(ymin = w-sd, ymax = w+sd, width = 0.2)) +
  labs(x= "Feed Type", y = "Average Weight Gain (g)") +
  theme_few()

#compact letter display
cld <- multcompLetters4(test,testtk)
cld
attach(chickwts)
cld  
#table with factors and 3rd quantile
#extracting the compact letter display and adding to the Tk table
cld <- as.data.frame.list(cld$feed)
dt$cld <- cld$Letters
ggplot(dt, aes(feed,w)) +
  geom_bar(stat= "identity", aes(fill = w), show.legend = FALSE)+
  geom_errorbar(aes(ymin= w-sd, ymax=w+sd), width = 0.2) +
  labs(x = "Feed Type" , y = "Average Weight Gain (g)")+
  geom_text(aes(label = cld, y = w +sd), vjust = -0.5)+
  ylim(0,410)+
  theme_few()
