SELECT 
	p.name,
	p.price,
	b.name AS brand,
	pm.desc		
FROM
	products p 
	JOIN
	brands b
	JOIN
	products_media pm 	 
ON
	p.brand_id = b.id AND pm.product_media_id = p.id
WHERE
	p.name LIKE concat('%', 'рубашка', '%');
	

SET @prod = 'рубашка';

SELECT
	u.first_name,
	u.last_name,
	p.name,
	pc.body 
FROM 
	products p 
	JOIN
	product_comments pc 
	JOIN
	users u 
ON
	pc.product_id = p.id AND pc.user_id = u.id
WHERE
	p.name LIKE concat('%', @prod, '%'); 
	