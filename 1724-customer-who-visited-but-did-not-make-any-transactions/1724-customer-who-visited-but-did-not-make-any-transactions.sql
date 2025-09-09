# Write your MySQL query statement below
Select v.customer_id , COUNT(v.visit_id) as count_no_trans
FROM Visits v
Left Join Transactions t
ON v.visit_id=t.visit_id
WHERE t.transaction_id is null
Group By v.customer_id;