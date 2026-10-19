
-- Final dataset validation

SELECT
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM retail_sales_analysis.orders_staging;




-- Verify whether customer-level totals match dataset totals

SELECT
    COUNT(*) AS total_customers,
    ROUND(SUM(customer_sales), 2) AS customer_level_sales,
    ROUND(SUM(customer_profit), 2) AS customer_level_profit
FROM (
    SELECT
        customer_id,
        ROUND(SUM(sales), 2) AS customer_sales,
        ROUND(SUM(profit), 2) AS customer_profit
    FROM retail_sales_analysis.orders_staging
    GROUP BY customer_id
) AS customer_totals;




-- Compare customer totals before and after rounding

SELECT
    ROUND(SUM(customer_sales_raw), 2) AS sales_from_raw_values,
    ROUND(SUM(customer_profit_raw), 2) AS profit_from_raw_values,
    ROUND(SUM(ROUND(customer_sales_raw, 2)), 2) AS sales_from_rounded_customers,
    ROUND(SUM(ROUND(customer_profit_raw, 2)), 2) AS profit_from_rounded_customers
FROM (
    SELECT
        customer_id,
        SUM(sales) AS customer_sales_raw,
        SUM(profit) AS customer_profit_raw
    FROM retail_sales_analysis.orders_staging
    GROUP BY customer_id
) AS customer_totals;




-- Check orders dated after October 19, 2026

SELECT
    COUNT(*) AS future_dated_records,
    MIN(order_date) AS first_future_order_date,
    MAX(order_date) AS last_future_order_date,
    ROUND(SUM(sales), 2) AS future_dated_sales,
    ROUND(SUM(profit), 2) AS future_dated_profit
FROM retail_sales_analysis.orders_staging
WHERE order_date > '2026-10-19';



-- Inspect future-dated orders and shipping dates

SELECT
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_name,
    category,
    sub_category,
    sales,
    profit
FROM retail_sales_analysis.orders_staging
WHERE order_date > '2026-10-19'
ORDER BY order_date ASC
LIMIT 20;



-- Compare full dataset with records dated on or before October 19, 2026

SELECT
    'Full Dataset' AS dataset_period,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_sales_analysis.orders_staging

UNION ALL

SELECT
    'Through 2026-10-19' AS dataset_period,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_sales_analysis.orders_staging
WHERE order_date <= '2026-10-19';



-- Future-dated sales and profit by region

SELECT
    region,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM retail_sales_analysis.orders_staging
WHERE order_date > '2026-10-19'
GROUP BY region
ORDER BY total_sales DESC;
