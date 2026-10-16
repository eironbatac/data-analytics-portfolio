SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode
FROM retail_sales_analysis.orders
WHERE row_id IN (22, 24, 31);