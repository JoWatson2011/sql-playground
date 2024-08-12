USE Northwind
GO

 -- get the names of the 5 employees with the most orders completed
WITH nOrdersByEmployee AS (
    SELECT 
    TOP 5
     EmployeeID,
    COUNT(*) 
      AS ordersCompleted
    FROM dbo.orders
    GROUP BY EmployeeID
    ORDER BY COUNT(*) DESC
) 
SELECT 
 FirstName,
 LastName,
 ordersCompleted 
FROM  employees
JOIN nOrdersByEmployee 
 ON employees.EmployeeID = nOrdersByEmployee.EmployeeID

GO

-- calculate cumulative orders shipped by month

WITH ordersShipped AS (
SELECT
 OrderId,
 MONTH(ShippedDate) as ShippedMonth,
 YEAR(ShippedDate) as ShippedYear
FROM orders
WHERE ShippedDate IS NOT NULL
)
SELECT 
 LAG(COUNT(*), 1, 0) OVER ( ORDER BY ShippedYear, ShippedMonth) 
  AS cumulativeOrdersShipped,
 ShippedMonth,
 ShippedYear
 FROM ordersShipped
GROUP BY ShippedYear, ShippedMonth
ORDER BY ShippedYear, ShippedMonth