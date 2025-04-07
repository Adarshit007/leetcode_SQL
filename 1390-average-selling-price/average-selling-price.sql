select a.product_id,
isnull(round(sum(a.price *b.units *1.0 )/sum(b.units),2),0) as average_price
from prices as a
left join 
unitssold as b
on a.product_id = b.product_id
and b.purchase_date between start_date and a.end_date
group by a.product_id