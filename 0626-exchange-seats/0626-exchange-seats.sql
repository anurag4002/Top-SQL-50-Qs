# Write your MySQL query statement below
SELECT 
CASE 
When id = (Select max(id) from Seat) and id % 2 = 1 then id
When id % 2 = 1 then id + 1 else id - 1  end as id ,
student
FROM Seat
Order By id
;


