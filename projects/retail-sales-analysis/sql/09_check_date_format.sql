
-- Check Date Availability Across the Dataset

SELECT
    COUNT(*) AS total_records,
    SUM(order_date IS NULL) AS missing_order_dates,
    SUM(ship_date IS NULL) AS missing_ship_dates,
    SUM(order_date IS NULL AND ship_date IS NULL)
        AS both_dates_missing
FROM retail_sales_analysis.orders;
