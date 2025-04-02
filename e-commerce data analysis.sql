-- Total Sales and Profit by Region.
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM `e-commerce`
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Sales and Profit by Category.
SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM `e-commerce`
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Monthly Sales and Profit Trends.
SELECT YEAR(`Order Date`) AS Year, MONTH(`Order Date`) AS Month, 
SUM(Sales) AS Monthly_Sales, SUM(Profit) AS Monthly_Profit
FROM `e-commerce`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;

-- Average Discount vs Profit.
SELECT AVG(Discount) AS Avg_Discount, SUM(Profit) AS Total_Profit
FROM `e-commerce`
GROUP BY Category
ORDER BY Avg_Discount DESC;

-- Top Customers by Sales.
SELECT `Customer ID`, `Customer Name`, SUM(Sales) AS Total_Sales
FROM `e-commerce`
GROUP BY `Customer ID`, `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top-Selling Products.
SELECT `Product Name`, SUM(Quantity) AS Total_Quantity_Sold
FROM `e-commerce`
GROUP BY `Product Name`
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;