DELIMITER //

CREATE TRIGGER UpdateBillingStatus
AFTER UPDATE ON Appointments
FOR EACH ROW
BEGIN
    IF NEW.Status = 'Completed' THEN
        INSERT INTO Billing (AppointmentID, Amount, PaymentStatus)
        VALUES (NEW.AppointmentID, 500.00, 'Pending'); -- Example amount
    END IF;
END //

DELIMITER ;
