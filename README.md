# ***Case study: How does a bike-share navigate speedy success?***

## **1. Introduction:-**

- ***Project Title:** How Does a Bike-Share Navigate Speedy Success?*

- ***Company:** Cyclistic Bike*

- ***Objective:** To analyze how casual riders and annual members use Cyclistic bikes differently and provide insights for converting casual riders into annual members.*

- ***Business  Task:*** The marketing team at Cyclistic aims to increase the number of annual memberships. Understanding the differences in usage patterns between casual riders and annual members will help design a targeted marketing strategy.

### **2. Data Process:-**

[DataPrepare.R]

- **Data Source:** Historical trip data from Cyclistic’s bike-share system.
- **Data Format:** CSV file (trip_merge.csv).
- **Data Fields:** Trip ID, Start Time, End Time, Start Station, End Station, User Type (Casual or Member), Ride Length, Day of the Week.
- **Tools Used:** R programming (DataPreparation.R, DataClean.R, DataAnalysis.R), Tableau for visualization.

### **3. Data Cleaning and Processing:-**

[DataClean.R]

- Removed null values and duplicates.
- Standardized date-time formats.
- Calculated ride duration.
- Filtered out invalid ride durations (e.g., negative values, extremely short rides).
- Categorized users into "Casual Riders" and "Annual Members."

### **4. Data Analysis:-**

[DataAnalysis.R]

### Key Findings:

1. **Ride Duration:** Casual riders take longer trips on average compared to annual members.
2. **Peak Usage Time:**
    - Casual riders prefer weekends and afternoons.
    - Annual members frequently ride on weekdays, especially during commuting hours (morning and evening).
3. **Popular Stations:**
    - Casual riders often use stations near tourist attractions and recreational areas.
    - Annual members use stations near business districts and residential areas.
4. **Seasonal Trends:**
    - Casual riders peak in summer months.
    - Annual members show consistent usage throughout the year.

### **5. Data Visualization:-**

[Data Visualization Summary]

- **Ride Trends by User Type:** Bar charts showing differences in ride frequency.
- **Heatmaps of Peak Usage Times:** Highlighting high-traffic hours for casual vs. annual riders.
- **Geospatial Analysis:** Maps displaying popular stations for both user types.
- **Seasonal Comparison:** Line charts showing variations across months.

### ***6. Recommendations:-***

- **Targeted Promotions:** Offer discounts or incentives for casual riders during weekdays to encourage more frequent usage.
- **Subscription Benefits Highlighting:** Promote the cost-effectiveness and convenience of annual membership.
- **Optimized Station Placement:** Expand or adjust station locations based on user demand patterns.
- **Loyalty Programs:** Introduce a rewards system for casual riders to encourage membership conversion.

### **7. Conclusion:-**

The analysis successfully identified key behavioral differences between casual and annual riders. By leveraging these insights, Cyclistic can implement marketing strategies to boost annual memberships, optimize station locations, and enhance customer engagement.

---

**Prepared by:** [Neeraj Kumar]

**Date:** [01-March-2025]
