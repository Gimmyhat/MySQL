-- Поиск товара по названию

DROP PROCEDURE IF EXISTS db_shop.find_product;

DELIMITER //

CREATE PROCEDURE find_product(IN name text)
BEGIN
	SET @name = name;
	SELECT
		p.name,
		p.price,
		b.name AS 'brand'
	FROM
		products p
		JOIN
		brands b
		ON p.brand_id = b.id
	WHERE
		p.name LIKE concat('%', @name, '%');

END

DELIMITER ;