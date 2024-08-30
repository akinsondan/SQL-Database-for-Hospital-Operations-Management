-- Stored procedure to add patient record

DELIMITER //

CREATE PROCEDURE new_patient_record (
	IN patient_id VARCHAR(255),
	IN p_first_name VARCHAR(255),
	IN p_last_name VARCHAR(255),
	IN p_gender VARCHAR(255),
	IN p_house_number VARCHAR(255),
	IN p_street VARCHAR(255),
	IN p_town VARCHAR(255),
	IN p_county VARCHAR(255),
	IN p_post_code VARCHAR(255),
	IN p_phone_number VARCHAR(255),
	IN p_email VARCHAR(255),
	IN p_birth_date DATE)
BEGIN
	INSERT INTO patient (patient_id,doctor_id,first_name,last_name,gender,house_number,street,town,county,post_code,phone_number,email,birth_date) 
	VALUES (p_patient_id, p_doctor_id, p_first_name, p_last_name, p_gender, p_house_number, p_street, p_town, p_county, p_post_code, p_phone_number, p_email, p_birth_date);
END //

DELIMITER ;