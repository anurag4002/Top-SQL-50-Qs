# Write your MySQL query statement below
Select customer_id
from Customer
order by customer_id
Having count(distinct product_key) = select count(product_key) from product);
