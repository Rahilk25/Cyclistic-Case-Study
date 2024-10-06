---How do annual members and casual riders use Cyclistic bikes differently?

Select member_casual, rideable_type, count(*) as trips,
Round(count(*) / (sum(count(*)) over())*100,2)||'%' as perc_of_total_trips
From combined_data_2023_cleaned
Group by member_casual, rideable_type

--output
member_casual	rideable_type	trips	perc_of_total_trips
"casual"     	"classic_bike"	872955	"20.15%"
"casual"     	"docked_bike"	76239	"1.76%"
"casual"     	"electric_bike"	582577	"13.45%"
"member"     	"classic_bike"	1817647	"41.96%"
"member"     	"electric_bike"	982224	"22.68%"

-- no. of trips per month

Select month, member_casual, Count(ride_id) as trips
From  combined_data_2023_cleaned
Group by month, member_casual, extract(month from started_at)
Order by extract(month from started_at), member_casual
 
 
 
 -- no. of trips per day of week
 
Select day_of_week, member_casual, count(*)as trips 
From combined_data_2023_cleaned 
Group by day_of_week, member_casual
 
 
--- trips per hour

Select extract(hr from started_at) as hour, member_casual, count(*) as trips  
From combined_data_2023_cleaned
Group by extract(hr from started_at), member_casual
Order by  extract(hr from started_at), member_casual;
 
 
---average ride_length per month

Select month, member_casual, extract(minute from avg(ride_length) ) as avg_ride_length
From combined_data_2023_cleaned 
Group by month, member_casual;

---average ride_length per weekday

Select day_of_week, member_casual, extract(minute from avg(ride_length)) as avg_ride_length
From combined_data_2023_cleaned 
Group by day_of_week, member_casual
Order by ( Case when day_of_week = 'Mon' then 1
		  		when day_of_week = 'Tue' then 2
		  		when day_of_week = 'Wed' then 3
		  		when day_of_week = 'Thur' then 4
		  		when day_of_week = 'Fri' then 5
		  		when day_of_week = 'Sat' then 6
		  	Else 7 End),
			member_casual;

--- Top 10 start location

Select start_station_name, count(*)as no_of_rides
From combined_data_2023_cleaned
Group by start_station_name
Order by no_of_rides desc
Limit 10


--- Top 10 end location

Select end_station_name, count(*)as no_of_rides
From combined_data_2023_cleaned
Group by end_station_name
Order by no_of_rides desc
Limit 10
  
--- Top 10 busiest route


Select start_station_name, end_station_name, count(*) as frequency 
From combined_data_2023_cleaned 
Group by start_station_name, end_station_name
Order by frequency desc
Limit 10


---Most used type of bike

Select rideable_type, count(*) as trips
From combined_data_2023_cleaned
Group by rideable_type
Order by trips desc
Limit 1


--- Ride lengths: Weekdays VS Weekends
WIth cte as (
Select case When day_of_week in ('Sun', 'Sat') then 'Weekend' else 'Weekday' end as day_type,
	   ride_length
From combined_data_2023_cleaned
)

Select day_type, Extract(minute From avg(ride_length)) as avg_length
From cte
Group by day_type

Select * From combined_data_2023_cleaned limit 10

 
--Trips: Weekdays VS Weekends

WIth cte as (
Select case When day_of_week in ('Sun', 'Sat') then 'Weekend' else 'Weekday' end as day_type,
	   ride_id
From combined_data_2023_cleaned
)

Select day_type, count(*) as trips
From cte
Group by day_type


-- Popular bike type

With cte as (
Select case When day_of_week in ('Sun', 'Sat') then 'Weekend' else 'Weekday' end as day_type,
	   ride_id, rideable_type
From combined_data_2023_cleaned
)
Select day_type,rideable_type, trips
From (
Select day_type, rideable_type, count(*) as trips,
rank() over(partition by day_type order by  count(*) desc) as rank
From cte
Group by day_type, rideable_type
) a
Where rank = 1


--monthly rides

With cte as (
Select month, count(*) as trips, lag(count(*)) over() as prev_mon
From combined_data_2023_cleaned
Group by month, extract(month from started_at) 
Order by extract(month from started_at) 
)
Select month, trips, Round((1.0*trips  - 1.0*prev_mon) / prev_mon * 100,2) || '%' as growth_perc
From cte


--quarterly growth

with cte as(
Select 'Q'||Extract(quarter from started_at) as quarter, count(*) as rides,
	lag(count(*)) over() as prev_qtr
From combined_data_2023_cleaned
Group by Extract(quarter from started_at)
)

Select quarter, rides,Round((1.0*rides - 1.0*prev_qtr)/ prev_qtr * 100,2) || '%' as qtr_growth
From cte





