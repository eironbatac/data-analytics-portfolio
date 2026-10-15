
SELECT
    category,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / SUM(sales) * 100,
        2
    ) AS profit_margin_pct
FROM retail_sales_analysis.orders
GROUP BY category
ORDER BY total_sales DESC;

