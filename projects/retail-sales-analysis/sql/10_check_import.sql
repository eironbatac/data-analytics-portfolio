SELECT
    COUNT(*) AS total_records,
    SUM(order_date IS NULL) AS missing_order_dates,
    SUM(ship_date IS NULL) AS missing_ship_dates
FROM retail_sales_analysis.orders;