---checking null values
Select
	COUNT(*) - COUNT(rideable_type) as rideable_type,
	COUNT(*) - COUNT(ride_length) as ride_length,
	COUNT(*) - COUNT(start_station_id) as start_station_id,
	COUNT(*) - COUNT(end_station_id) as end_station_id,
	COUNT(*) - COUNT(member_casual) as member_casual

From combined_data_2023;

Select
Distinct rideable_type
From combined_data_2023


---Creating new cleaned table

Create Table combined_data_2023_cleaned As (
	Select
		ride_id,
		rideable_type,
		started_at,
		ended_at,
		ride_length,
		to_char(started_at, 'Dy') as day_of_week, --day 
		to_char(started_at, 'Mon') as month,
		start_station_name,
		end_station_name,
		start_lat,
		start_lng,
		end_lat,
		end_lng,
		member_casual
	From
		combined_data_2023
	Where
		start_station_name is not null
		and end_station_name is not null
);

Select * From combined_data_2023_cleaned;

--- checking duplicate records

Select ride_id, Count(*) From combined_data_2023_cleaned
Group by ride_id
Having count(*) > 1;

					 
---deleting duplicates by using 'ctid'

Delete From combined_data_2023_cleaned a
Using combined_data_2023_cleaned b
Where a.ride_id = b.ride_id
And a.ctid < b.ctid;


---ride_id as primary key

ALter table combined_data_2023_cleaned
Add primary key(ride_id);










