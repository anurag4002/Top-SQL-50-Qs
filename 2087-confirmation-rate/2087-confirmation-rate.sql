# Write your MySQL query statement below
SELECT s.user_id,
ROUND(AVG(if(c.action = 'confirmed' , 1, 0)),2) as confirmation_rate
from Signups as s
LEFT JOIN Confirmations as c
ON s.user_id = c.user_id
Group BY user_id;
