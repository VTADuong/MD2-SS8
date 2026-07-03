DELIMITER //
CREATE PROCEDURE sp_check_order_value (IN total DECIMAL (15,2))
BEGIN
	IF total >= 5000 THEN
		SELECT 'Đơn hàng có giá trị cao';
	ELSE
		SELECT 'Đơn hàng có giá trị thấp';
	END IF;
END //
DELIMITER ;

CALL sp_check_order_value (5500);