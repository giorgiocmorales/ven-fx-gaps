# Venezuela exchange rate gaps time series analysis (2019-2024)

#Load packages

library(tidyverse)
library(zoo)
library(readxl)
library(lubridate)

#Load data
tc_data <- read_excel("TC_Venezuela_2019-24.xlsx")

#Base sumamry
base::summary(tc_data)

#Database classes
class(tc_data$date)
class(tc_data$tc_unofficial)
class(tc_data$tc_official)

#Turn into zoo time series
tc_unofficial_zoo <- zoo(tc_data$tc_unofficial, order.by = tc_data$date)
tc_official_zoo <- zoo(tc_data$tc_official, order.by = tc_data$date)
  
#Start
start(tc_data$tc_official)
end(tc_data$tc_official)

summary(tc_official_zoo)
summary(tc_unofficial_zoo)


#autoplot
