
CREATE DATABASE IF NOT EXISTS retail_sales_analysis;

USE retail_sales_analysis;

CREATE TABLE IF NOT EXISTS orders (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date VARCHAR(20),
    ship_date VARCHAR(20),
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
