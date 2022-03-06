DROP TABLE IF EXISTS comments_logs;
CREATE TABLE comments_logs (
	`user` varchar(255),
	created_at datetime DEFAULT current_timestamp) ENGINE=ARCHIVE;


-- лог комментариев пользователей

DELIMITER //
DROP TRIGGER IF EXISTS comments_log//
CREATE TRIGGER comments_log AFTER INSERT ON db_shop.product_comments 
FOR EACH ROW
BEGIN
	INSERT INTO comments_logs
	SET 
		`user` = (SELECT CONCAT(first_name, ' ', last_name) 
	FROM 
		product_comments pc 
		JOIN
		users u 
	ON
		pc.user_id = u.id 
	WHERE pc.id = NEW.id); 
END //

DELIMITER ;