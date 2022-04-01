-- The OVER() clause signifies a window of rows over which a window function is applied. 
-- It can be used with aggregate functions, thereby turning it into a window function.


-- Using Database

Use [SQL-Window-Functions];

-- Select the data from the database to extract the whole query set.

Select * from dbo.[202202-capitalbikeshare-tripdata];

-- The first part of the below aggregation, SUM(duration_seconds), looks a lot like basic aggregate function. 
-- Adding OVER() designates it as a window function. 
-- We can read the above aggregation as "take the sum of duration over the aggregate of entire result set."

Select duration, SUM(duration) OVER() AS running_total from dbo.[202202-capitalbikeshare-tripdata];

-- We can read the above aggregation as "take the sum of duration over the aggregate of entire result set, in order by started_at."
Select duration, SUM(duration) OVER (ORDER BY started_at) AS running_total from dbo.[202202-capitalbikeshare-tripdata];
