# Ford Gobike Tripdata Analysis
## by (Mostafa Abdelaleem)


## Dataset
**The dataset includes information about individual rides made in a bike-sharing system covering the greater San Francisco Bay area.**    
**Datasets columns:**    
{ duration_sec, start_time, end_time, start_station_id, start_station_name, start_station_latitude, start_station_longitude, end_station_id, end_station_name, end_station_latitude, end_station_longitude, bike_id, user_type, member_birth_year, member_gender:, bike_share_for_all_trip }     

## Data wrangling and cleaning
**Steps:**   
* Drop records with any missing values.    
* Fix data types:     
  * change start_time and end_time columns from string to datetime type.    
  * change start_station_id and end_station_id from float to integer.    
* create new columns:    
  * create a new column for trip duration in minutes "duraion_min'.    
  * create a new column for the user age "user_age". 

## Summary of Findings
**Using visulaztions to find answers about the data, the following insights was found:**    
* The Trip duration follow a right skewed distribution and 90% of durations fall under 19.35 minutes.
* The busiest hours are 8 and 17 and the trips from 0 to 5 o'clock are much lower than other hours.    
* The most popular start station is 'market St at 10th St' and the least popular is '16th St Depot'.    
* The most popular end station is 'Townsend St at 4th St' the least popular is 'Williw St at Vine St'.    
* Most of the users are males.    
* Most of the users are subscribers.    
* Most of the users are in the 20's and 30's with peaks in ages of 26, 24, 35, 62, and 23.    
* the mean duration for all starting hours is approx. between 13 to 20 mins while having one peak at starting hour 3 which might mean that some people renting bike at this early time might tend to rent for alonger time (maybe the whole day).    
* Most of the rides are one hour are less.    
* On average subscribers has shorter rides than customer which might mean that sxubscriber use the bike as their main transportation for work with shorter rider while customers might rent bikes for fun which takes longer than a regular work commute ride.    
* Most of the day hours females seems to have more trip durations than males and others(which might be users not decalring their gender) have more durations than both males and females.    
* The most popular station has the id of 58 and name of Market St at 10th St and the main population of user there are from subscribers from both genders males and females



## Key Insights for Presentation

For the presentation, I focused on answering the following questions:
* what is the average time for a trip?
* when is the rush hours?
* what are the most popular stations ?
* what is the user classifications by age, gender, and user type (customer or subscriber)?
And to answer the questions I used histogram plot to show the distribution of the trip duration and count plot to find the rush hours. I grouped the data by stations and calculated the number of trips for each station and choose the 30 most popular stations, then used count plot to find out the most popular starting station which was 'market St at 10th St'. To have a good understanding of the user classifications, I used pie plot to breakdown users by gender and user type and count plot to find the most common ages for the users. Two bivariate plots was used to find the relation between the "User age and start trip time" and "User Type and Ride duration" and both plots confirmed the previous findings.