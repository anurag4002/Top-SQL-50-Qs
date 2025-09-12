# Write your MySQL query statement below

SELECT e1.name 
from Employee e1
Join Employee e2
ON e1.id = e2.managerId
Group By e1.id , e1.name
HAVING COUNT(e2.id)>= 5;


