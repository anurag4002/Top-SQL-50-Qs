# Write your MySQL query statement below
SELECT MAX(num) as num
FROM MyNumbers
Where num in(
    select num from MyNumbers
    Group by num 
    Having COUNT(*) =1
);