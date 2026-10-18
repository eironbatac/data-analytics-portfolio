
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales
FROM retail_sales_analysis.orders_staging
WHERE order_date >= '2026-11-01'
  AND order_date < '2026-12-01'
GROUP BY DATE_FORMAT(order_date, '%Y-%m');
