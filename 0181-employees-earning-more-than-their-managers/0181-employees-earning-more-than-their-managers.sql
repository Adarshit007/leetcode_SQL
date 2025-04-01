/* Write your T-SQL query statement below */
SELECT
a.name AS employee
FROM Employee as a
JOIN
employee AS b
ON a.managerid=b.id
WHERE a.salary> b.salary