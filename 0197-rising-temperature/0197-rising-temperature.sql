/* Write your T-SQL query statement below */
select 
a.id
from weather as a  
join 
weather as b
on a.recorddate=dateadd(day,1,b.recorddate)
where a.temperature>b.temperature