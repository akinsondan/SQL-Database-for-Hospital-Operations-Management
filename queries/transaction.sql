-- Create transaction
DELIMITER //
START TRANSACTION;

INSERT INTO medical_history (medical_history_id, patient_id, known_condition, allergy) 
VALUES ('MH21', 'P01', 'Cancer', NULL);

ROLLBACK;
COMMIT;

DELIMITER ;