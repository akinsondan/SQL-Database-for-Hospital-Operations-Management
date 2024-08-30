-- Create a view for staff details without sensitive information like address.

CREATE VIEW staff_details AS
SELECT 
        staff.staff_id AS staff_id,
        staff.first_name AS first_name,
        staff.last_name AS last_name
FROM staff;