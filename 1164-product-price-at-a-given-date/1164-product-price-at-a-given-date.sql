# Write your MySQL query statement below
Select product_id , new_price as price
from Products
Where(product_id , change_date) IN 
(
    select product_id , max(change_date) 
    from products
    Where change_date <= '2019-08-16'
    group by product_id
)
UNION
Select product_id , 10 as price
from Products
Where(product_id )  not IN 
(
    select product_id 
    from products
    Where change_date <= '2019-08-16'
    group by product_id
) 

;