-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

Select *
FROM customers 
WHERE Email = 'smac@kinetecoinc.com'

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com')


INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (
(SELECT CustomerID from customers where CustomerID = 102), '2022-08-12 18:00', 5)

select * from Reservations where customerID = 102


-- didnt need to write a subquery - i knew what the customerID was so could have typed 102 simply