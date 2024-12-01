-- Example script to migrate data from an old system to the new schema

INSERT INTO Patients (FirstName, LastName, DOB, Gender, ContactNumber, Address, Email)
SELECT old_first_name, old_last_name, old_dob, old_gender, old_phone, old_address, old_email
FROM old_database.old_patients_table;
