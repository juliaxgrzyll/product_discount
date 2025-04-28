/*prices and discounts for benefits products from groups 23,45*/
select
	 mp.product_name              			          as product_name
	,mp.product_price            		              as price_before_discount
    ,round((mp.product_price*(1-pb.discount/100)),0)  as price_after_discount
    ,round(mp.product_price*(pb.discount/100),0)      as discount_value
from my_products mp
inner join product_benefits pb on mp.product_name = pb.product_name
where mp.group_id=23 or mp.group_id=45
order by 4 desc
limit 3