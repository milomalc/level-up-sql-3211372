-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT firstNAme, LAstName, email, COUNT(o.customerID) as order_count
FROM Customers c 
JOIN Orders o on c.customerID = o.customerID
GROUP BY o.CustomerID
ORDER BY Count(c.customerID) DESC
LIMIT 6

