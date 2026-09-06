-- Retail Data Pipeline Queries
CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE sales_data (
    order_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    amount INT
);
INSERT INTO sales_data (order_id, product_name, category, amount)
VALUES 
    (101, 'laptop', 'Electronic', 55000),
    (102, 'T-shirt', 'Clothing', 800),
    (103, 'Headphones', 'Electronic', 2500),
    (104, 'Jeans', 'Clothing', 2200),
    (105, 'Smartphone', 'Electronic', 25000),
    (106, 'Sofa', 'Furniture', 18000),
    (107, 'Chair', 'Furniture', 4500),
    (108, 'laptop', 'Electronic', 55000),
    (109, 'Rice', 'Groceries', 2000),
    (110, 'Dhal', 'Groceries', 500),
    (111, 'Dairy milk', 'Chocolate', 300),
    (112, 'kit kat', 'Chocolate', 400);

SELECT category, SUM(amount) AS total_sales 
FROM sales_data 
GROUP BY category
ORDER BY total_sales DESC;