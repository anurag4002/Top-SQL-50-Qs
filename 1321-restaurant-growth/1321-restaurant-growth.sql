# Write your MySQL query statement below
Select visited_on,
(
    select sum(amount)
    from customer 
    where visited_on between date_sub(c.visited_on, interval 6 day ) and c.visited_on
)
    as amount,

Round((
    select sum(amount)/7
    from customer 
    where visited_on between date_sub(c.visited_on, interval 6 day ) and c.visited_on
),2) as average_amount

from Customer  c
where visited_on >=
 (
    select date_add(min(visited_on), interval 6 day)
    from customer
 )
 Group by visited_on
 Order by visited_on
 
 ;