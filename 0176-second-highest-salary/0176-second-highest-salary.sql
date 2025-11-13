# Write your MySQL query statement below
Select max(salary) as  SecondHighestSalary
from Employee
Where salary  not in (Select max(salary) from Employee );
