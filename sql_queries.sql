--  Sales Database Project

CREATE TABLE Sales (
    OrderID INT,
    Customer VARCHAR(50),
    Product VARCHAR(50),
    Quantity INT,
    Price INT,
    Region VARCHAR(50)
);

-- View all data
SELECT * FROM Sales;

-- Calculate total sales per customer
SELECT Customer, Quantity * Price AS TotalSales
FROM Sales;

-- Find missing values
SELECT *
FROM Sales
WHERE Price IS NULL OR Quantity IS NULL;

-- Filter by region
SELECT *
FROM Sales
WHERE Region = 'North';
