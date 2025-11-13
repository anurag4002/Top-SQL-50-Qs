# Write your MySQL query statement below
Select employee_id, department_id
from Employee
Where primary_flag = "Y"
group By employee_id
UNION
Select employee_id, department_id
from Employee
group By employee_id
Having count(employee_id) = 1;
