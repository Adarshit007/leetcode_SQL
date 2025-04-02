/* Write your T-SQL query statement below */
with cte as(
    select 
    id,
    emAIL,
    ROW_NUMBER() OVER(PARTITION BY EMAIL ORDER BY ID) AS ROW_NO
    FROM PERSON
)
DELETE FROM PERSON
WHERE ID IN(
    SELECT
    ID
    FROM CTE
    WHERE ROW_NO>1
)