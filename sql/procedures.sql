DELIMITER //

CREATE PROCEDURE AddPatient(
    IN pFirstName VARCHAR(50),
    IN pLastName VARCHAR(50),
    IN pDOB DATE,
    IN pGender ENUM('Male', 'Female', 'Other'),
    IN pContactNumber VARCHAR(15),
    IN pAddress TEXT,
    IN pEmail VARCHAR(100)
)
BEGIN
    INSERT INTO Patients (FirstName, LastName, DOB, Gender, ContactNumber, Address, Email)
    VALUES (pFirstName, pLastName, pDOB, pGender, pContactNumber, pAddress, pEmail);
END //

CREATE PROCEDURE ScheduleAppointment(
    IN pPatientID INT,
    IN pDoctorID INT,
    IN pAppointmentDateTime DATETIME,
    IN pNotes TEXT
)
BEGIN
    INSERT INTO Appointments (PatientID, DoctorID, AppointmentDateTime, Notes)
    VALUES (pPatientID, pDoctorID, pAppointmentDateTime, pNotes);
END //

CREATE PROCEDURE GetAppointmentsForDoctor(
    IN doctorID INT
)
BEGIN
    SELECT 
        a.AppointmentID, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName,
        a.AppointmentDateTime, a.Status
    FROM Appointments a
    JOIN Patients p ON a.PatientID = p.PatientID
    WHERE a.DoctorID = doctorID;
END //

DELIMITER ;
