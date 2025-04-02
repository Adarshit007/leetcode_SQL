/* Write your T-SQL query statement below */
select 
b.name as Department,
a.name as Employee,
a.salary as Salary
from Employee as a
left join 
Department as b
on a.departmentid=b.id
where a.salary =(
    select max(c.salary) 
    from Employee as c
    where a.departmentid=c.departmentid
)