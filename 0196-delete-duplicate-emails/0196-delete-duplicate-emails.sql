/* Write your T-SQL query statement below */
delete from
person
where id not in(
    select
    min(id)
    from person
    Group by email
)