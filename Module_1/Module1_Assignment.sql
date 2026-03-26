-- Module 1: My Guitar Shop Database Setup and Queries

-- 1. Select all product names from product tables
SELECT product_name FROM products;

-- 2. Example of an intentional syntax error: 
-- SELECT product_nam FROM products;

-- 3. Count the total number of products
SELECT COUNT(*) AS number_of_products FROM products;

-- 4. Run product_details.sql script
-- Example content from product_details.sql:
SELECT product_code, product_name, list_price, discount_percent 
FROM products;

-- 5. Run product_summary.sql script
-- Example: 
SELECT category_id, COUNT(*) AS total_products, AVG(list_price) AS avg_price 
FROM products
GROUP BY category_id;

-- 6. Run product_statements.sql script
-- Example:
SELECT product_name, list_price FROM products WHERE list_price > 1000;
SELECT product_name FROM products ORDER BY date_added DESC;