/* Write your T-SQL query statement below */
select Email from Person 
group by email 
having count(*)>1