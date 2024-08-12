USE Northwind
GO

-- View summary information of all objects in the database
sp_help
-- EXEC sp_help

PRINT 'Orders:'
SELECT * FROM dbo.Orders
-- Reports indexes on a table
EXEC sp_helpindex N'dbo.Orders'

-- Syntax for name with whitespace
SELECT * FROM dbo.[Order Details]

-- Query with alias'
SELECT CompanyName, ContactName, ContactTitle, PostalCode as 'Zip Code' 
FROM dbo.customers AS cust