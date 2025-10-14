# Write your MySQL query statement below.
Select e1.name , b1.bonus
FROM Employee e1
LEFT JOIN bonus b1
On e1.empId = b1.empId
Where b1.bonus < 1000
OR  b1.bonus is null;


