/* Write your T-SQL query statement below */
select
b.name as Department,
a.name as Employee,
a.salary as Salary
from Employee as a
left join 
Department as b
on a.departmentid=b.id
where(
    select 
    count(distinct salary)
    from Employee as c
    where c.departmentid=a.departmentid and c.salary>=a.salary
)<=3
order by Department,Employee
