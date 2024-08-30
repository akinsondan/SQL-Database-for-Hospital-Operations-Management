-- Explain statement to access how qeuries are run

EXPLAIN SELECT consultation_id, get_full_name(patient.first_name, patient.last_name) AS patient_name, get_full_name(staff.first_name, staff.last_name) AS doctors_name, date, time
FROM consultation
LEFT JOIN patient ON patient.patient_id = consultation.patient_id
LEFT JOIN doctor ON doctor.doctor_id = consultation.doctor_id
LEFT JOIN staff ON staff.staff_id = doctor.staff_id
WHERE date BETWEEN '2023-10-30' AND '2023-11-30';
