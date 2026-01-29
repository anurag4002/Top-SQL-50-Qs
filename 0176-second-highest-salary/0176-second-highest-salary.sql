# Write your MySQL query statement below
SELECT MAX(Salary) as SecondHighestSalary 
From Employee
Where Salary < (Select Max(Salary) from employee);

