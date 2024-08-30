-- Create user access 

CREATE USER 'doctor'@'localhost' IDENTIFIED BY 'doctor2024';
CREATE USER 'nurse'@'localhost' IDENTIFIED BY 'nurse2024';
CREATE USER 'lab_tech'@'localhost' IDENTIFIED BY 'lab2024';
CREATE USER '3rdparty'@'localhost' IDENTIFIED BY 'officer2024';
CREATE USER 'dataadmin'@'localhost' IDENTIFIED BY 'dataadmin2024';

GRANT SELECT, INSERT, UPDATE ON hospital.* TO 'doctor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON hospital.* TO 'nurse'@'localhost';
GRANT SELECT ON hospital.* TO '3rdparty'@'localhost';
GRANT SELECT, INSERT, UPDATE ON hospital.* TO 'lab_tech'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON hospital.* TO 'dataadmin'@'localhost';

FLUSH PRIVILEGES;

SELECT user, host FROM mysql.user;
