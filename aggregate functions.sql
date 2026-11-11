-- 1. Total number of orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- 2. Total unique customers
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM orders;

-- 3. Average quantity
SELECT AVG(Quantity) AS Average_Quantity
FROM orders;

-- 4. Total sales
SELECT SUM(Quantity * UnitPrice) AS Total_Sales
FROM orders;

-- 5. Minimum price
SELECT MIN(UnitPrice) AS Minimum_Price
FROM orders;

-- 6. Maximum price
SELECT MAX(UnitPrice) AS Maximum_Price
FROM orders;

-- 7. Orders by country
SELECT Country, COUNT(*) AS Total_Orders
FROM orders
GROUP BY Country;

-- 8. Quantity by category
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY Category;