-- Get all patients medical_histoy

SELECT 
    patient.first_name,
    patient.first_name,
    medical_history.*
FROM 
    patient
INNER JOIN medical_history
ON patient.patient_id = medical_history.patient_id;
