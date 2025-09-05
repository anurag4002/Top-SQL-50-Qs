# Write your MySQL query statement below
SELECT product_name , s.year , s.price 
FROM Sales s
LEFT JOIN Product  P
On P.product_id = S.product_id;
