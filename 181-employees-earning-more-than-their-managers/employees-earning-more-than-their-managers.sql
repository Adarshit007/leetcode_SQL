/* Write your T-SQL query statement below */
select
a.name as employee
from Employee as a
join 
employee as b
on a.managerid=b.id
where a.salary> b.salary