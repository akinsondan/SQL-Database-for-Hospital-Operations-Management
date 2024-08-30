-- Create function that calculates age from birth date

DELIMITER //
CREATE FUNCTION get_age (date_of_birth DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE());
    RETURN age;
END//
DELIMITER ;