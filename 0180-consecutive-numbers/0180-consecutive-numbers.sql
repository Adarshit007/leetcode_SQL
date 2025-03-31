/* Write your T-SQL query statement below */
SELECT distinct
l1.num AS ConsecutiveNums
FROM LOGS AS l1
join
LOGS AS l2 
ON l1.id=l2.id +1
join
LOGS AS l3
on l2.id=l3.id +1
WHERE l1.num=l2.num and l2.num=l3.num