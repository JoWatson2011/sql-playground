-- Creating variables with DECLARE / SET /SELECT

USE Northwind
GO

-- Simple function that will return a different column
-- from the Employees table depending on the value of @testVar
CREATE OR ALTER FUNCTION dbo.getInfo (@testVar BIT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        CASE 
            WHEN @testVar > 0 THEN Title 
            ELSE LastName 
        END AS fromFunction
    FROM dbo.Employees
);
GO

-- DECLARE new variable
DECLARE @testVar AS BIT = 0;
SELECT * FROM dbo.getInfo(@testVar)

-- Reassign variable with SET
SET @testVar = 1
SELECT * FROM dbo.getInfo(@testVar) -- different response

GO
-- Variable is declared
DECLARE @var3 AS NVARCHAR(20);
-- Value is assigned with SELECT
SELECT @var3 = Lastname FROM dbo.Employees WHERE EmployeeID = 1;
SELECT @var3 AS varFromSelect;