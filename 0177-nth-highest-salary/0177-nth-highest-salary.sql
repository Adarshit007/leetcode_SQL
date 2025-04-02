CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT
       MAX(SALARY)  AS  getNthHighestSalary
        FROM
        (SELECT
        SALARY ,
        DENSE_RANK() OVER (ORDER BY SALARY DESC) AS RANKING
        FROM EMPLOYEE
        ) AS A
        WHERE RANKING = @N
    );
END