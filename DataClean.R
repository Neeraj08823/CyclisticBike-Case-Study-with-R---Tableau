#Count rows with "na" values
colSums(is.na(trip_merge))

#Remove missing
clean_trip <- trip_merge[complete.cases(trip_merge), ]

#Remove duplicates
clean_trip <- distinct(clean_trip)

#Remove na, empty, missing
clean_trip <- drop_na(clean_trip)
clean_trip <- remove_empty(clean_trip)
clean_trip <- remove_missing(clean_trip)

#Remove data with greater start_at than end_at
clean_trip<- clean_trip %>% 
  filter(started_at < ended_at)

#Renaming column for better context
clean_trip <- rename(clean_trip, costumer_type = member_casual, 
                           bike_type = rideable_type)


#Separate date in date, day, month, year for better analysis
clean_trip$date <- as.Date(clean_trip$started_at)
clean_trip$week_day <- format(as.Date(clean_trip$date), "%A")
clean_trip$month <- format(as.Date(clean_trip$date), "%b_%y")
clean_trip$year <- format(clean_trip$date, "%Y")


#Separate column for time
clean_trip$time <- as.POSIXct(clean_trip$started_at, format = "%Y-%m-%d %H:%M:%S")
clean_trip$time <- format(clean_trip$time, format = "%H:%M")

#Add ride length column
clean_trip$ride_length <- difftime(clean_trip$ended_at, clean_trip$started_at, units = "mins")

#Select the data we are going to use
clean_trip <- clean_trip %>% 
  select(bike_type, costumer_type, month, year, time, started_at, week_day, ride_length)
         
#Remove stolen bikes
clean_trip <- clean_trip[!clean_trip$ride_length>1440,] 
clean_trip <- clean_trip[!clean_trip$ride_length<5,] 
         
#Check Cleaned data
colSums(is.na(clean_trip))
View(filter(clean_trip, clean_trip$ride_length > 1440 | clean_trip$ride_length < 5))

#Save the cleaned data
write.csv(clean_trip,file = "CyclisticBike/clean_trip.csv",row.names = FALSE)

