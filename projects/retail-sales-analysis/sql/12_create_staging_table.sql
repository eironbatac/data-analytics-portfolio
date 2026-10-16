USE retail_sales_analysis;

CREATE TABLE IF NOT EXISTS orders_staging (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    country_region VARCHAR(100),
    city VARCHAR(100),
    state_province VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(12, 4),
    quantity INT,
    discount DECIMAL(5, 4),
    profit DECIMAL(12, 4)
);

SHOW TABLES LIKE 'orders_staging';


LOAD DATA LOCAL INFILE 'projects/retail-sales-analysis/data/orders.csv'
INTO TABLE retail_sales_analysis.orders_staging
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
    @row_id, @order_id, @order_date, @ship_date,
    @ship_mode, @customer_id, @customer_name, @segment,
    @country_region, @city, @state_province, @postal_code,
    @region, @product_id, @category, @sub_category,
    @product_name, @sales, @quantity, @discount, @profit
)
SET
    row_id = @row_id,
    order_id = @order_id,
    order_date = STR_TO_DATE(@order_date, '%d/%m/%Y'),
    ship_date = STR_TO_DATE(@ship_date, '%d/%m/%Y'),
    ship_mode = @ship_mode,
    customer_id = @customer_id,
    customer_name = @customer_name,
    segment = @segment,
    country_region = @country_region,
    city = @city,
    state_province = @state_province,
    postal_code = @postal_code,
    region = @region,
    product_id = @product_id,
    category = @category,
    sub_category = @sub_category,
    product_name = @product_name,
    sales = @sales,
    quantity = @quantity,
    discount = @discount,
    profit = @profit;

SELECT COUNT(*) AS staging_records
FROM retail_sales_analysis.orders_staging;

SELECT COUNT(*) AS staging_records
FROM retail_sales_analysis.orders_staging;

SELECT
    COUNT(*) AS total_records,
    SUM(order_date IS NULL) AS missing_order_dates,
    SUM(ship_date IS NULL) AS missing_ship_dates,
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date
FROM retail_sales_analysis.orders_staging;


SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT row_id) AS unique_row_ids,
    SUM(order_date IS NULL) AS missing_order_dates,
    SUM(ship_date IS NULL) AS missing_ship_dates
FROM retail_sales_analysis.orders_staging;


SELECT
    (SELECT COUNT(*)
     FROM retail_sales_analysis.orders) AS original_records,

    (SELECT COUNT(*)
     FROM retail_sales_analysis.orders_staging) AS staging_records;


SELECT
    o.row_id,
    o.order_id,
    o.order_date AS original_order_date,
    s.order_date AS staging_order_date,
    o.ship_date AS original_ship_date,
    s.ship_date AS staging_ship_date
FROM retail_sales_analysis.orders AS o
JOIN retail_sales_analysis.orders_staging AS s
    ON o.row_id = s.row_id
WHERE o.order_date IS NULL
   OR o.ship_date IS NULL
ORDER BY o.row_id
LIMIT 10;

TRUNCATE TABLE retail_sales_analysis.orders_staging;

SELECT COUNT(*) AS staging_records
FROM retail_sales_analysis.orders_staging;