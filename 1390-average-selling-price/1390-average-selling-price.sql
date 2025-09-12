# Write your MySQL query statement below
SELECT p.product_id ,
ifnull(Round(Sum(p.price * u.units)/ sum(u.units),2),0) as average_price
FROM Prices p
Left JOIN UnitsSold u
ON p.product_id =u.product_id
and u.purchase_date between p.start_date and p.end_date
Group BY p.product_id;

