/* Write your T-SQL query statement below */
with cte as(
    select 
    a.product_id,
    price,
    units
    from prices as a
    left join 
    unitssold as b
    on a.product_id=b.product_id
    and purchase_date >= start_date and purchase_date <= end_date
)
SELECT product_id, COALESCE(ROUND(CAST(SUM(price * units) AS FLOAT) / SUM(units),2),0) AS average_price
FROM CTE
GROUP BY product_id;