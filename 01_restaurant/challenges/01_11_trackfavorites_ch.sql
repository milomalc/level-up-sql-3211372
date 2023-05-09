-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT *
FROM customers
WHERE firstNAme = 'Cleo'


UPDATE Customers
SET FavoriteDish = 
  (SELECT DishID
  FROM Dishes
  WHERE Name = 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo'