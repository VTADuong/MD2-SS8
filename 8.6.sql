DELIMITER //
CREATE PROCEDURE sp_classify_students(
	IN avg_sco DECIMAL (4,2),
    OUT level CHAR (20)
)
BEGIN
	DECLARE	ketqua VARCHAR(20);
    CASE
		WHEN avg_sco >= 8.0 THEN
			SET ketqua = 'Gioi';
		WHEN avg_sco >= 6.5 THEN
			SET ketqua = 'Kha';
		WHEN avg_sco >=5.0 THEN
			SET ketqua = 'Trung binh';
		ELSE
			SET ketqua = 'Yeu';
	END CASE;
    SET level = ketqua;
END //
DELIMITER ;

CALL sp_classify_students(4.5, @result);
SELECT @result AS 'Xếp loại học lực(4.5)';