DELIMITER //
CREATE PROCEDURE sp_get_products_by_category (IN category_name VARCHAR(50))
BEGIN
	SELECT *
    FROM products
    WHERE category = category_name;
END
// DELIMITER ;
CALL sp_get_products_by_category ('laptop');