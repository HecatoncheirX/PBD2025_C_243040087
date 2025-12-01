SELECT TOP 10 ProductID, SUM(LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM(LineTotal) > 50000
ORDER BY TotalRevenue DESC;