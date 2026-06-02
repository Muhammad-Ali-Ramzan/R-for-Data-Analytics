# Pakistani Cars ka detail dataset create karna
pak_cars <- data.frame(
  mpg  = c(16.0, 18.5, 14.2, 12.5, 11.0, 11.5, 13.0, 10.0, 9.5, 14.0), # Kilometers per liter (KMPL)
  cyl  = c(3, 3, 3, 4, 4, 4, 4, 4, 4, 4),                              # Number of cylinders
  disp = c(796, 658, 998, 1199, 1498, 1798, 1496, 1999, 1999, 1480),   # Displacement in CC
  hp   = c(39, 39, 67, 88, 170, 138, 106, 155, 155, 105),              # Gross horsepower
  wt   = c(0.65, 0.65, 0.85, 1.10, 1.30, 1.25, 1.10, 1.50, 1.60, 1.05),# Weight in 1000 kgs (Tons)
  am   = c(0, 1, 0, 1, 1, 1, 1, 1, 1, 1),                              # Transmission (0 = Manual, 1 = Automatic)
  gear = c(4, 5, 5, 5, 6, 6, 7, 6, 6, 5)                               # Number of forward gears
)

# Row names set karna (Cars ke naam)
rownames(pak_cars) <- c(
  "Suzuki Mehran", 
  "Suzuki Alto", 
  "Suzuki Cultus", 
  "Honda City 1.2", 
  "Honda Civic 1.5", 
  "Toyota Corolla 1.8", 
  "Toyota Yaris 1.5", 
  "Kia Sportage", 
  "Hyundai Tucson", 
  "Changan Alsvin"
)


library(ggplot2)
data(pak_cars)
pak_cars$cyl <- as.factor(pak_cars$cyl)
pak_cars$gear <- as.factor(pak_cars$gear)

  ggplot(pak_cars, aes(x = wt, y=mpg,colour = cyl))+
    geom_point(size=5)
  
  subset(pak_cars, cyl = 3, mpg = max(cyl = 3))

  