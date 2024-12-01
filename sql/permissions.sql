CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123';
CREATE USER 'doctor_user'@'localhost' IDENTIFIED BY 'DoctorPass123';
CREATE USER 'billing_user'@'localhost' IDENTIFIED BY 'BillingPass123';

GRANT ALL PRIVILEGES ON HealthcareManagementSystem.* TO 'admin_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Appointments TO 'doctor_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Billing TO 'billing_user'@'localhost';

FLUSH PRIVILEGES;
