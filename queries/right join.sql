-- Get all columns in consultation table, and patient name from patient table

SELECT patient.first_name, patient.last_name, consultation.*
FROM patient
RIGHT JOIN consultation ON patient.patient_id = consultation.patient_id;