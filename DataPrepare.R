#load packages
library(tidyverse)
library(lubridate)
library(janitor)
library(data.table)
library(readr)
library(psych)
library(hrbrthemes)
library(ggplot2)

#Import Data
january_2021 <- read.csv("CyclisticBike/202101-divvy-tripdata.csv")
february_2021 <- read.csv("CyclisticBike/202102-divvy-tripdata.csv")
march_2021 <- read.csv("CyclisticBike/202103-divvy-tripdata.csv")
april_2021 <- read.csv("CyclisticBike/202104-divvy-tripdata.csv")
may_2021 <- read.csv("CyclisticBike/202105-divvy-tripdata.csv")
june_2021 <- read.csv("CyclisticBike/202106-divvy-tripdata.csv")
july_2021 <- read.csv("CyclisticBike/202107-divvy-tripdata.csv")
august_2021 <- read.csv("CyclisticBike/202108-divvy-tripdata.csv")
september_2021 <- read.csv("CyclisticBike/202109-divvy-tripdata.csv")
october_2021 <- read.csv("CyclisticBike/202110-divvy-tripdata.csv")
november_2021 <- read.csv("CyclisticBike/202111-divvy-tripdata.csv")
december_2021 <- read.csv("CyclisticBike/202112-divvy-tripdata.csv")


#Data Validation
colnames(january_2021)
colnames(february_2021)
colnames(march_2021)
colnames(april_2021)
colnames(may_2021)
colnames(june_2021)
colnames(july_2021)
colnames(august_2021)
colnames(september_2021)
colnames(october_2021)
colnames(november_2021)
colnames(december_2021)

# Total number of rows
sum(nrow(january_2021) + nrow(february_2021) + nrow(march_2021) + nrow(april_2021) 
      + nrow(may_2021) + nrow(june_2021) + nrow(july_2021) + nrow(august_2021) 
      + nrow(september_2021) + nrow(october_2021)+ nrow(november_2021) + nrow(december_2021))

# Combine Data of 12 month into one
trip_merge <- rbind(january_2021,february_2021,march_2021,april_2021,may_2021,june_2021,
              july_2021,august_2021,september_2021,october_2021,november_2021, december_2021)

# Save the combined files
write.csv(trip_merge,file = "CyclisticBike/trip_merge.csv",row.names = FALSE)

#Final data validation
colnames(trip_merge)
str(trip_merge)
View(head(trip_merge))
View(tail(trip_merge))
dim(trip_merge)
summary(trip_merge)

