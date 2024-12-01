INSERT INTO Patients (FirstName, LastName, DOB, Gender, ContactNumber, Address, Email)
VALUES
('John', 'Doe', '1990-01-01', 'Male', '1234567890', '123 Main St', 'john.doe@example.com'),
('Jane', 'Smith', '1985-05-15', 'Female', '9876543210', '456 Elm St', 'jane.smith@example.com');

INSERT INTO Doctors (FirstName, LastName, Specialty, ContactNumber, Email, HireDate)
VALUES
('Alice', 'Johnson', 'Cardiology', '1112223333', 'alice.johnson@hospital.com', '2010-08-01'),
('Bob', 'Williams', 'Neurology', '4445556666', 'bob.williams@hospital.com', '2012-06-15');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDateTime, Status, Notes)
VALUES
(1, 1, '2024-01-15 09:00:00', 'Scheduled', 'Regular check-up'),
(2, 2, '2024-01-16 11:30:00', 'Scheduled', 'Follow-up consultation');
