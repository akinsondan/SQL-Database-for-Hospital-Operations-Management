-- Group patients into three categories

SELECT
    patient_id,
    get_full_name(first_name, last_name) AS patient_name,
    CASE
        WHEN get_age(birth_date) < 18 THEN 'Child'
        WHEN get_age(birth_date) >= 18 AND get_age(birth_date) < 40 THEN 'Adult'
        ELSE 'Senior'
    END AS age_category
FROM
    patient;
