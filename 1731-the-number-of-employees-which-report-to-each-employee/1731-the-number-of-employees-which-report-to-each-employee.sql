# Write your MySQL query statement below

Select e1.employee_id, e1.name,
Count(e2.reports_to) as reports_count , Round(avg(e2.age)) as average_age
from employees e1
Inner Join employees e2 
On e1.employee_id = e2.reports_to
Group By e1.employee_id
Order By e1.employee_id;
