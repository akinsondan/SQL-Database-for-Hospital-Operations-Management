/* Get all records from admission table, 
and the respective nurses in charge*/

SELECT admission.*, staff.first_name AS nurse_first_name, staff.last_name AS nurse_last_name
FROM admission
LEFT JOIN nurse ON admission.nurse_id = nurse.nurse_id
LEFT JOIN staff ON staff.staff_id = nurse.staff_id;


