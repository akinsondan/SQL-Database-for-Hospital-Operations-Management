-- Create trigger to update doctor table after insertion into staff table

DELIMITER //

CREATE TRIGGER after_staff_trigger
AFTER INSERT ON staff
FOR EACH ROW
BEGIN
	IF NEW.job_type = 'doctor' THEN
		SET @last_doctor_id := (SELECT IFNULL(MAX(SUBSTRING(doctor_id, 2)) + 1, 1) FROM doctor);
		SET @new_doctor_id = CONCAT('D', @last_doctor_id);
		INSERT INTO doctor (doctor_id, staff_id)
		VALUES (@NEW_.doctor_id, NEW.staff_id);
    END IF;
END;
//

DELIMITER ;
