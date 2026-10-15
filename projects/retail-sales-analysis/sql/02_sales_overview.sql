
USE retail_sales_analysis;

-- 1. Overall sales performance
SELECT
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(sales), 2) AS average_sales_per_record,
    ROUND(AVG(profit), 2) AS average_profit_per_record
FROM orders;
