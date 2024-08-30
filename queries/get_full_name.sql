-- Create function that gets the full name

DELIMITER //
CREATE FUNCTION get_full_name (first_name VARCHAR(255), last_name VARCHAR(255)) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(255);
    SET full_name = CONCAT(first_name,' ', last_name);
    
RETURN full_name;
END //
DELIMITER ;