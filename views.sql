-- Основная информация о товаре
CREATE OR REPLACE VIEW  product_main_info AS
SELECT
	p.name,
	b.name AS brand,
	p.price
FROM
	products p
	JOIN
	brands b 
ON
	p.brand_id = b.id 
ORDER BY
	p.name;

SELECT * FROM product_main_info pmi ;

-- Список продуктов отсортированных по полезности товара на основании отзывов пользователей
CREATE OR REPLACE VIEW product_useful AS
SELECT
	p.name,
	pc.useful AS rating
FROM 
	products p
	JOIN
	product_comments pc
ON
	pc.product_id = p.id
ORDER BY 
	pc.useful DESC;
	
SELECT * FROM product_useful pu ;