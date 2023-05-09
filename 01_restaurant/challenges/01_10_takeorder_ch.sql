-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO orders (CustomerID, OrderDate)
VALUES (70, '2022-9-20 14:00')

SELECT * FROM orders where customerID = 70 


SELECT Name, Price, SUM(price) as OrderTotal
FROM Dishes WHERE name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, (SELECT DishID FROM dishes WHERE name = 'House Salad')),
        (1001, (SELECT DishID FROM dishes WHERE name = 'Mini Cheeseburgers')),
        (1001, (SELECT DishID FROM Dishes WHERE name = 'Tropical Blue Smoothie'))

UPDATE OrdersDishes 
SET DishID = 20
WHERE OrdersDishesID = 4024

SELECT OrderID, SUM(price) as order_total
from OrdersDishes od 
JOIN Dishes d on od.DishID = d.DishID
where orderID = 1001
GROUP BY OrderID