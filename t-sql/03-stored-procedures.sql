
-- Stored procedure that does a calculation
-- Example from docs
EXEC CONVERTCELSIUSTOFAHRENHEIT 0 
GO

-- View all existing procedures
EXEC sp_stored_procedures;
GO

-- Stored procedure to report on table
USE Northwind
GO

EXEC SELECTRECENTHIRES