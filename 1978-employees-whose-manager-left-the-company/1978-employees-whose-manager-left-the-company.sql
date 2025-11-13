# Write your MySQL query statement below
Select employee_id
from Employees
Where salary  <= 30000
and manager_id not in(select employee_id from Employees)
Order By employee_id
;