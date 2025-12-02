# Write your MySQL query statement below
Select Round(Sum(tiv_2016), 2) as tiv_2016
from Insurance
where tiv_2015 IN
(
    Select tiv_2015 from insurance 
    Group by tiv_2015
    Having count(*) > 1
)
and (lat, lon) IN 
(
    Select lat, lon 
    from insurance 
    Group by lat, lon
    Having count(*) = 1
)
;