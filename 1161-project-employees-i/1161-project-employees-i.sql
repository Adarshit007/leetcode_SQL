/* Write your T-SQL query statement below */
-- select
-- a.project_id ,
-- round(avg(cast(b.experience_years as float)),2)as average_years
-- from project as a
-- left join
-- employee as b
-- on b.project_id =a.project_id 
-- group by a.project_id


-- SELECT
--     a.project_id,
--     ROUND(AVG(CAST(b.experience_years AS FLOAT)), 2) AS average_years
-- FROM project AS a
-- LEFT JOIN employee AS b
--     ON b.project_id = a.project_id
-- GROUP BY a.project_id;


/* Write your T-SQL query statement below */
select p.project_id,
    round(avg(cast(experience_years as decimal )),2)
as average_years 
from Project p 
left join employee e on e.employee_id = p.employee_id 
group by project_id;