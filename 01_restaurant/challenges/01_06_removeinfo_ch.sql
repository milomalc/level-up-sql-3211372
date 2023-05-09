-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Select *
FROM Reservations r
LEFT JOIN customers c on c.customerID = r.customerID
WHERE FirstName = 'Norby'

DELETE FROM Reservations
WHERE ReservationID = '2000'