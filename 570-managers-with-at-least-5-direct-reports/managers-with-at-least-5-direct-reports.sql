select
a.name
from employee as a
join (
    select
    managerid 
    from employee
    where managerid is not null
    group by managerid
    having count (*)>=5
)as b
on a.id=b.managerid
