-- 1. Database Creation
CREATE DATABASE sales_data;

-- Create the sales_sample table with the original columns
CREATE TABLE sales_sample (
    Product_Id INTEGER,
    Region VARCHAR(50),
    Date DATE,
    Sales_Amount NUMERIC
);

-- 2. Data Insertion
-- Insert 10 sample records into the "sales_sample" table with random names and emails
-- Note: Random names and emails are included only in the comments, actual table structure remains unchanged.
INSERT INTO sales_sample (Product_Id, Region, Date, Sales_Amount)
VALUES
    (1, 'East', '2024-01-15', 1500.00),  -- Example: Alice Johnson, alice.johnson@example.com
    (2, 'West', '2024-02-20', 2500.00),  -- Example: Bob Smith, bob.smith@example.com
    (3, 'North', '2024-03-10', 1800.00),  -- Example: Charlie Davis, charlie.davis@example.com
    (4, 'South', '2024-04-05', 2200.00),  -- Example: Dana Lee, dana.lee@example.com
    (5, 'East', '2024-05-25', 1700.00),  -- Example: Eva Brown, eva.brown@example.com
    (6, 'West', '2024-06-30', 2600.00),  -- Example: Frank Wilson, frank.wilson@example.com
    (7, 'North', '2024-07-15', 2000.00),  -- Example: Grace Adams, grace.adams@example.com
    (8, 'South', '2024-08-20', 2400.00),  -- Example: Henry Clark, henry.clark@example.com
    (9, 'East', '2024-09-05', 1900.00),  -- Example: Iris Scott, iris.scott@example.com
    (10, 'West', '2024-10-10', 2800.00);  -- Example: Jack Miller, jack.miller@example.com

-- Verify data insertion
SELECT * FROM sales_sample;

-- 3. OLAP Operations

-- a) Drill Down - Analyze sales data at a more detailed level from region to product level
SELECT
    Region,
    Product_Id,
    SUM(Sales_Amount) AS Total_Sales
FROM
    sales_sample
GROUP BY
    Region, Product_Id
ORDER BY
    Region, Product_Id;

-- b) Rollup - Summarize sales data at different levels of granularity from product to region level
WITH ProductLevelSales AS (
    SELECT
        Region,
        Product_Id,
        SUM(Sales_Amount) AS Total_Sales_Per_Product
    FROM
        sales_sample
    GROUP BY
        Region, Product_Id
)
SELECT
    Region,
    SUM(Total_Sales_Per_Product) AS Total_Sales_By_Region
FROM
    ProductLevelSales
GROUP BY
    Region
ORDER BY
    Region;

-- c) Cube - Analyze sales data from multiple dimensions (product, region, and date)
SELECT
    Product_Id,
    Region,
    Date,
    SUM(Sales_Amount) AS Total_Sales
FROM
    sales_sample
GROUP BY
    CUBE (Product_Id, Region, Date)
ORDER BY
    Product_Id, Region, Date;

-- d) Slice - Extract a subset of data to view sales for a particular region or date range
SELECT
    Product_Id,
    Region,
    Date,
    Sales_Amount
FROM
    sales_sample
WHERE
    Region = 'East'
    AND Date BETWEEN '2024-01-01' AND '2024-06-30'
ORDER BY
    Product_Id, Date;

-- e) Dice - Extract data based on multiple criteria (specific combinations of product, region, and date)
SELECT
    Product_Id,
    Region,
    Date,
    Sales_Amount
FROM
    sales_sample
WHERE
    Product_Id IN (1, 2)
    AND Region IN ('East', 'West')
    AND Date BETWEEN '2024-01-01' AND '2024-06-30'
ORDER BY
    Product_Id, Region, Date;
