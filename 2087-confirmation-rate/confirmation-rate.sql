/* Write your T-SQL query statement below */
select 
a.user_id,
round(avg(
    case 
       when b.action='confirmed' then 1.00
       else 0
    end
),2) confirmation_rate
from 
Signups as a
left join
Confirmations as b
on a.user_id= b.user_id
group by a.user_id