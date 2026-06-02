## Khattak Data Sensing | BIC University of Agriculture, Faisalabad
    #DATASET 1 - Employee Start Dates
install.packages("lubridate")
library(lubridate)
df1 <- data.frame(
  name = c("A", "B", "C"),
  start= c("2025-01-01", "2025-03-15", "2024-12-20")
)

## **Q:** Convert to date and exact year.
## **A:**
df1$start <- ymd(df1$start)
year(df1$start)
month(df1$start)

    #DATASET 2 - Sales Timestamps**
df2 <- data.frame(
  sale_id = 1:3,
  ts= c("2025-04-10 12:20:00", "2025-04-10 19:10:00", "2025-04-11 09:00:00")
)

## **Q:** Get Hour of each sale and create new column
## **A:**
df2$hour <- hour(ymd_hms(df2$ts))
df2

    #DATASET 3 - Birthdays**
df3 <- data.frame(
  person = c("A", "B", "C"),
  birthday = c("10/04/1990", "22/11/1985", "15/08/2000")
)

## **Q:** Parse DMY Birthdays.
## **A:**
df3$birthday1 <- dmy(df3$birthday)
df3

#DATASET 4 - machine Logs**
df4 <- data.frame(
  log = 1:4,
  ts  = c("2025-04-01 00:03", "2025-04-01 00:59", "2025-03-01 01:10", "2025-04-01 02:02")
)


## **Q:** Round timestamps to the nearest hour.
## **A:**
df4$round_bar <- round_date(ymd_hm(df4$ts), "hour")

