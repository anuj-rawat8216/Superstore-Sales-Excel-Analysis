-- Superstore Sales & Profit Analysis
-- SQL Analysis using SQLite


-- 1. Region-wise Sales and Profit
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;


-- 2. Category-wise Sales and Profit
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;


-- 3. Discount Impact on Sales and Profit
SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.20 THEN 'Low (1-20%)'
        ELSE 'High (>20%)'
    END AS discount_band,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(profit) AS avg_profit
FROM superstore
GROUP BY discount_band
ORDER BY total_profit DESC;


-- 4. Top 10 Customers by Sales
SELECT
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 5. Year-wise Sales and Profit Trend
SELECT
    year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY year
ORDER BY year;
