# Write your MySQL query statement below
SELECT sell_date, Count(distinct product ) as num_sold, 
Group_Concat( Distinct product order by product  separator ',') as products
from Activities
Group by sell_date 
Order by sell_date;