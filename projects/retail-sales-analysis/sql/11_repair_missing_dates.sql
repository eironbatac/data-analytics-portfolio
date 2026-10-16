-- Back up the current orders table before repairing dates

CREATE TABLE orders_backup_before_date_fix
LIKE retail_sales_analysis.orders;

INSERT INTO orders_backup_before_date_fix
SELECT *
FROM retail_sales_analysis.orders;

SELECT COUNT(*) AS backup_records
FROM retail_sales_analysis.orders_backup_before_date_fix;

SELECT
    row_id,
    order_id,
    order_date,
    ship_date
FROM retail_sales_analysis.orders_backup_before_date_fix
WHERE row_id IN (22, 24, 31);