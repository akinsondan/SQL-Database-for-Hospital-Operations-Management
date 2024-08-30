-- Create function that gets full address

DELIMITER //
CREATE FUNCTION full_address (house_number VARCHAR(255), street VARCHAR(255), town VARCHAR(255), county VARCHAR(255), post_code VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
	DECLARE full_add VARCHAR(255);
    SET full_add = CONCAT(house_number, ' ', street, ' ', town, ' ', county, ' ', post_code);
RETURN full_add;
END//
DELIMITER ;
