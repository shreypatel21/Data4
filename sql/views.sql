CREATE VIEW UpcomingAppointments AS
SELECT 
    a.AppointmentID, p.FirstName AS PatientFirstName, p.LastName AS PatientLastName,
    d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName,
    a.AppointmentDateTime, a.Status
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.AppointmentDateTime > NOW();
