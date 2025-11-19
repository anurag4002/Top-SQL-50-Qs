# Write your MySQL query statement below
Select 
activity_date as day,
count(distinct (user_id)) as active_users
from Activity
Where activity_date between date_sub('2019-07-27' , interval 29 day) and '2019-07-27'
Group by day;

