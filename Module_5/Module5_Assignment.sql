-- Module 5: Aggregate Functions, Joins, GROUP BY, and Having

-- 1. Count Orders and Sum Tax Amounts
SELECT
    COUNT(*) AS total_order,
    SUM(tax_amount) AS total_tax_amount
FROM orders;

-- 2. Aggregate Product Data by Category
SELECT 
    c.category_name,
    COUNT(*) AS product_count,
    MAX(p.list_price) AS most_expensive_product
FROM categories c
JOIN products p 
    ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY product_count DESC;

-- 3. Calculate Sales and Discounts per Customer
SELECT
    c.email_address,
    SUM(oi.item_price * oi.quantity) AS total_item_price,
    SUM(oi.discount_amount * oi.quantity) AS total_discount_amount
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.email_address
ORDER BY total_item_price DESC;

-- 4. Count Orders and Calculate Total Order Amount per Customer
SELECT
    c.email_address,
    COUNT(DISTINCT o.order_id) AS order_count,
    SUM((oi.item_price -oi.discount_amount) * oi.quantity) AS total_order_amount
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.email_address
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY total_order_amount DESC;
