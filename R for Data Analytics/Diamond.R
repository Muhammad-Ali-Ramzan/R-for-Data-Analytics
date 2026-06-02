library(ggplot2)
data("diamonds")
head(diamonds)

##Example 1: Basic scatter plot of Carat vs Price
ggplot(diamonds, aes(x=carat, y=price))+
  geom_point()


##Example 2: Add color by cut
ggplot(diamonds, aes(x=carat, y=price, colour = cut)) +
  geom_point()


##Example:3 Adjust Transparency (alpha)
ggplot(diamonds, aes(x= carat, y= price, colour = color)) +
  geom_point(alpha=(0.5))

ggplot(diamonds, aes(x= carat, y= price, colour = color, shape = cut)) +
  geom_point(alpha=(0.5))

##Example:4 Add size by depth
ggplot(diamonds, aes(x=carat, y=price, colour = clarity, size = depth))+
  geom_point(alpha=0.6)


##Example:5 Add Title and Theme
ggplot(diamonds, aes(x=carat, y = price, colour = cut)) +
  geom_point()+
  labs(title = "Diamond Price vs Carat by Cut") +
  theme_classic()


  ##**geom_bar() - Bar Plots
##Example: counts of diamonds by cut
ggplot(diamonds, aes(x=cut)) +
  geom_bar()

##Example:2 Bar color by Clarity
ggplot(diamonds, aes(x=cut, fill = clarity)) +
  geom_bar()


##Example:3 Horizontal Bar Plot
ggplot(diamonds, aes(x=cut, fill = color)) +
  geom_bar() +
  coord_flip()

##Example:4 Position dodge (side-by-side bars)
ggplot(diamonds, aes(x=cut, fill = color)) +
  geom_bar(position = "dodge")
  
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "dodge") +
  scale_y_continuous(breaks = seq(0, 5000, by = 500))

##Example 5: Stack ratio (fill = proportion)
ggplot(diamonds, aes(x=cut, fill = color)) +
  geom_bar(position = "fill") +
  labs(y = "proportion") +
  scale_y_continuous(breaks = seq(0.00, 1.00, by = 0.1))


############################
## Example:5 Log Scale for Price    
ggplot(diamonds, aes(x= cut, y = price,)) +
  geom_boxplot(fill = "lightblue") +
  scale_y_log10() +
  labs(y = "Price (log Scale)")


 ##  **histogram()_ Histogram

##Example:1 Basic Histogram of Price 
ggplot(diamonds,aes(x = price)) +
  geom_histogram(binwidth = 500)
 
##Example:2 Add Fill Colour
ggplot(diamonds,aes(x= price, fill = cut)) +
  geom_histogram(binwidth = 700)

##Example:3 Add Border and alpha
ggplot(diamonds, aes(x= price, fill = cut)) +
  geom_histogram(binwidth = 1000, color = "black" , alpha = 0.5)

##Example:4 Change Theme
ggplot(diamonds, aes(x=price, fill = cut)) +
  geom_histogram(binwidth = 1000, color = "lightgreen", alpha = 0.5) +
 theme_classic()

##Example:5 Log-Transformed Price
ggplot(diamonds, aes(x=log(price), fill = cut)) +
  geom_histogram(bins = 30, alpha = 0.6)


## **geom_density() - Density curves ** 
  ##Example:1 Density of Price
ggplot(diamonds, aes(x= price)) +
  geom_density()


##Example:2 Density by Cut
ggplot(diamonds, aes(x= price, colour = cut))+
  geom_density()

ggplot(diamonds,aes (x=log (price), fill = cut))+
  geom_density(alpha= 0.5)
