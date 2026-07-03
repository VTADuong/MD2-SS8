DELIMITER //
CREATE PROCEDURE sp_check_employee_income(
	IN emp_name CHAR(200),
    IN emp_salary DECIMAL(15,2)
)
BEGIN
	IF emp_salary >= 5000 THEN
		SELECT emp_name AS name, 'Thu nhập cao' AS income_level;
    ELSEIF emp_salary >= 3500 THEN
		SELECT emp_name AS name, 'Thu nhập trung bình' AS income_level;
    ELSE
		SELECT emp_name AS name, 'Thu nhập thấp' AS income_level;
	END IF;
END //
DELIMITER ;

CALL sp_check_employee_income('Tran Mai Anh', 5000);