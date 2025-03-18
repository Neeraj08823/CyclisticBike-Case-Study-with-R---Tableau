#import the cleaned data
clean_trip <- read_csv("CyclisticBike/clean_trip.csv")

str(clean_trip)
names(clean_trip)


#order the data
clean_trip$month <- ordered(clean_trip$month,levels=c("Jan_21","Feb_21","Mar_21","Apr_21" 
                                                      ,"May_21","Jun_21","Jul_21","Aug_21"
                                                      ,"Sep_21","Oct_21","Nov_21","Dec_21"))


clean_trip$week_day <- ordered(clean_trip$week_day,levels=c("Sunday", "Monday", "Tuesday", 
                                                            "Wednesday", "Thursday", 
                                                            "Friday", "Saturday"))


#Analysis:- min, max, median, average
View(describe(clean_trip$ride_length, fast=TRUE))

#Total no. of customers
View(table(clean_trip$costumer_type))

#Total rides for each customer type in minutes
View(setNames(aggregate(ride_length ~ costumer_type, clean_trip, sum), 
              c("customer_type", "total_ride_len(mins)")))


#Differences between members and casual riders in terms of length of ride
View(clean_trip %>% 
       group_by(costumer_type) %>% 
       summarise(min_length_mins = min(ride_length), max_length_min = max(ride_length),
                 median_length_mins = median(ride_length), mean_length_min = mean(ride_length)))


#Average ride_length for users by day_of_week and Number of total rides by day_of_week
View(clean_trip %>% 
       group_by(week_day) %>% 
       summarise(Avg_length = mean(ride_length),
                 number_of_ride = n()))

#Average ride_length by month
View(clean_trip %>% 
       group_by(month) %>% 
       summarise(Avg_length = mean(ride_length),
                 number_of_ride = n()))


#Average ride length comparison by each week day according to each customer type
View(aggregate(clean_trip$ride_length ~ clean_trip$costumer_type + 
                 clean_trip$week_day, FUN = mean))


#Average ride length comparison by each month according to each customer type
View(aggregate(clean_trip$ride_length ~ clean_trip$costumer_type + 
                 clean_trip$month, FUN = mean))


#Analyze rider length data by customer type and weekday
View(clean_trip %>% 
       group_by(costumer_type, week_day) %>% 
       summarise(number_of_ride = n(),
                 avgerage_duration = mean(ride_length),
                 median_duration = median(ride_length),
                 max_duration = max(ride_length),
                 min_duration = min(ride_length)))


#Analyze rider length data by customer type and month
View(clean_trip %>% 
       group_by(costumer_type, month) %>% 
       summarise(number_of_ride = n(),
                 average_duration = mean(ride_length),
                 median_duration = median(ride_length),
                 max_duration = max(ride_length),
                 min_duration = min(ride_length)))


#Save the data for data visualization
write.csv(clean_trip,file = "CyclisticBike/trip_tableau.csv",row.names = FALSE)

