# Write your MySQL query statement below
SELECT P.product_name , SUM(o.unit) as unit 
from Products as P
 Left Join Orders as O
ON P.product_id =O.product_id
WHERE MONTH(O.order_date) = 2
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
;
