-- Module 2: My Guitar Shop Queries Continued

-- 1. Run a SELECT statement to retrieve product details
SELECT product_code, product_name, list_price, discount_percent
FROM products;

-- 2. Run a SELECT statment to retrieve full customer names
SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM customer
WHERE last_name >= 'M'
ORDER BY last_name ASC;

-- 3. Run a SELECT statement to return products by price and sort by date
SELECT
