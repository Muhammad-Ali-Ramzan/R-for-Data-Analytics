install.packages("RMySQL")
#install.packages("RMariaDB")
library(DBI)
library(RMySQL)
con <- dbConnect(
  RMySQL::MySQL(),
  dbname = "gvtiw",
  host = "localhost",
  user = "root",
  password = "#Hammad.254"
)

# Read CSV into R
#data <- read.csv("File location)
data=mtcars
dbExecution(con, "Set Global Local_infile =1;")
