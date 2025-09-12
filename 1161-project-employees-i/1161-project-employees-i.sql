# Write your MySQL query statement below
SELECT p.project_id , Round(AVG(e.experience_years),2) as average_years
from Project p
Left join Employee e
ON p.employee_id= e.employee_id
group By p.project_id;
