# Cyclistic Case Study

I will take on the role of a junior data analyst at the fictional company, Cyclistic. This case study will involve performing several real-world tasks that are critical to addressing key business questions for Cyclistic. My goal is to analyze data, uncover insights, and provide data-driven recommendations that can help guide business strategies and decision-making. Through this project, I will demonstrate essential skills required for a junior data analyst, including data cleaning, exploration, visualization.

## Links

[Data preview](https://github.com/Rahilk25/Cyclistic-Case-Study/blob/main/cyclistic_combined_preview.csv)

SQL Queries: 

[ Data Combining](https://github.com/Rahilk25/Cyclistic-Case-Study/blob/main/Data%20Combining.sql)  
[ Data Cleaning](https://github.com/Rahilk25/Cyclistic-Case-Study/blob/main/Data%20Cleaning.sql)  
[ Data Analysis](https://github.com/Rahilk25/Cyclistic-Case-Study/blob/main/Data%20Analysis.sql)


## Background
### Cyclistic
A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.   
  
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.  
  
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.  

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.  

### Scenario
I am assuming to be a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.

### Data Source
I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2022 to Dec 2022 which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement).

### Combining the Data
SQL Query: [https://github.com/Rahilk25/Cyclistic-Case-Study/blob/main/Data%20Combining.sql)  
12 csv files are uploaded as tables in the dataset '2022_tripdata'. Another table named "combined_data" is created, containing 5,667,717 rows of data for the entire year. 


### The table below shows the all column names and their data types. The __ride_id__ column is our primary key.  
![image](https://github.com/user-attachments/assets/3ace399f-8391-4ab2-b93f-ce067df6fd30)

## Visualization
![image](https://github.com/user-attachments/assets/dd54fbd2-f4d0-4b93-90e3-8045f380b17f)

## Key Insights:
### Peak Season: 
Both casual riders and members peak in the month of July and August seeing the highest number of trips. Casual riders hit 245,357 trips in July, while members peaked at 351,061 in August.

### Members Ride More Consistently:
Throughout the year, members consistently take more trips than casual riders, even during the winter months when trips decline sharply for casual riders.

## Recommendations:
### Winter Promotions: 
Target both riders with offers to increase winter rides.
### Membership Offers:
Encourage casual riders to become members during peak summer months with promotional offers.
### Summer Campaigns: 
Maximize advertising and partnerships during the busy summer season.

### Average ride duration
![image](https://github.com/user-attachments/assets/bf6ea2a2-61ae-44f7-a993-0470017d6700)


## Insights:
### Casual Riders Prefer Weekends: 
Average trip duration peaks for casual riders on weekends, especially Sundays (26 minutes).       
Casual riders take the longest trips in July (25 minutes) and August (24 minutes).      
Both casual and member riders have shorter rides in December, with casuals averaging 16 minutes      

### Recommendations:
Focus weekend promotions on casual riders.      
Launch summer campaigns encouraging longer rides.   
Offer winter discounts for quicker rides.

# Monthly And Quarterly Trends


![image](https://github.com/user-attachments/assets/a7f57aa0-c89c-48bc-8e2d-9d342fe3d9b4)


## Insights and Recommendations
Peak Usage: Highest trips in August (585K).  
Growth Period: Steady increase from January to July.  
Decline: Significant drop from September onwards to 167K in December.

## Recommendations
Promote Off-Peak: Implement strategies to increase ridership in fall.  
Seasonal Offers: Introduce discounts during colder months.  
User Feedback: Gather insights to address barriers in off-peak seasons.

# Bike Type Preferences


![image](https://github.com/user-attachments/assets/7415be21-f836-4684-99ea-6ac68c295597)

## Insights 

Classic bikes are popular among all users, followed by electric bikes. The high availability of these two bike types contributes significantly to their preference. Ensuring a consistent supply of classic and electric bikes can enhance user satisfaction and encourage more rides, particularly among casual users.    
### Encourage Electric Bike Use:
Offer discounts to casual riders.  
### Docked Bikes: 
Investigate low engagement and improve service offerings.


















