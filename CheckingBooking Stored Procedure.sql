CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN BookingDate DATE, IN TNumber INT)
BEGIN
DECLARE is_booked INT;

SELECT COUNT(*)
INTO is_booked
FROM bookings
WHERE BookingDate = Date AND TableNumber = Tnumber;

IF is_booked > 0 THEN
	SELECT CONCAT("Table ", TNumber, " is already booked") as "Booking Status";

ELSE
	SELECT CONCAT("Table ", TNumber, " is not booked on ", BookingDate) as "Booking Status";
END IF;

END