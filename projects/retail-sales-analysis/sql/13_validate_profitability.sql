-- Validate Profitability Distribution

SELECT
    SUM(profit > 0) AS profitable_records,
    SUM(profit = 0) AS break_even_records,
    SUM(profit < 0) AS loss_records,
    ROUND(
        SUM(CASE WHEN profit < 0 THEN profit ELSE 0 END),
        2
    ) AS total_loss_amount
FROM retail_sales_analysis.orders_staging;