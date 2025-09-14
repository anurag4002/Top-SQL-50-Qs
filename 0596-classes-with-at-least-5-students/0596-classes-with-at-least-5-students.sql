# Write your MySQL query statement below
Select class 
from Courses 
Group By class
Having COUNT(class) >=5;