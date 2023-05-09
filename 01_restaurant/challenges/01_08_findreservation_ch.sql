-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select * from reservations r 
join customers c on r.customerID = c.customerID
WHERE c.LastName LIKE 'St%' AND PartySize = 4 and date like '%06_14%'