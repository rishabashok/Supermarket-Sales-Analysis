CREATE DATABASE supermarket_sales;
USE supermarket_sales;

CREATE TABLE sales_data (
    Order_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Category INT,
    Sub_Category INT,
    City INT,
    Order_Date DATE,
    Region INT,
    Sales FLOAT,
    Discount FLOAT,
    Profit FLOAT,
    State INT,
    Order_Day INT,
    Order_Month INT,
    Order_Year INT
);
SELECT * FROM sales_data LIMIT 10;

SELECT Order_Year,SUM(Sales) AS Total_Sales
FROM sales_data GROUP BY Order_Year
ORDER BY Order_Year;

SELECT City,SUM(Sales) AS Total_Sales
FROM sales_data GROUP BY City
ORDER BY Total_Sales DESC LIMIT 5;

SELECT Category, AVG(Discount) AS Avg_Discount
FROM sales_data GROUP BY Category
ORDER BY Avg_Discount DESC;

SELECT Region, SUM(Profit) AS Total_Profit
FROM sales_data GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT Category,SUM(Sales) AS Total_Sales, 
SUM(Profit) AS Total_Profit,
ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS Profit_Margin_Percent
FROM sales_data GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;

SELECT Order_Year, Order_Month,
SUM(Sales) AS Monthly_Sales
FROM sales_data Group by Order_Year, Order_Month
ORDER BY Order_Year, Order_Month;







