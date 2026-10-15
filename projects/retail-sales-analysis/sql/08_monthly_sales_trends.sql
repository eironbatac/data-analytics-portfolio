
-- Monthly Sales and Profit Trends

SELECT
    DATE_FORMAT(
        STR_TO_DATE(order_date, '%Y-%m-%d'),
        '%Y-%m'
    ) AS order_month,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM retail_sales_analysis.orders
GROUP BY order_month
ORDER BY order_month;
