
-- Regional Sales and Profit Performance

SELECT
    region,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM retail_sales_analysis.orders
GROUP BY region
ORDER BY total_sales DESC;

