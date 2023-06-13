/*Find the customers who have ordered products from all categories*/
SELECT c.CustomerID, c.CustomerName
FROM Customers c
WHERE NOT EXISTS (
    SELECT *
    FROM Categories cat
    WHERE NOT EXISTS (
        SELECT *
        FROM Orders o
        JOIN OrderDetails od ON o.OrderID = od.OrderID
        JOIN Products p ON od.ProductID = p.ProductID
        WHERE o.CustomerID = c.CustomerID AND p.CategoryID = cat.CategoryID
    )
);