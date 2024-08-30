-- Create a view for patient details without sensitive information.

CREATE VIEW patient_details AS
    SELECT 
        patient.patient_id AS patient_id,
        patient.first_name AS first_name,
        patient.last_name AS last_name,
        patient.gender AS gender,
        patient.birth_date AS birth_date
    FROM
        patient