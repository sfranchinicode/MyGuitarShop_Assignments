-- Module 3: Using Joins 

-- 1. Join Categories and Product Tables
SELECT c.category_name, p.product_name, p.list_price
FROM categories c
JOIN products p
ON c.category_id = p.category_id
ORDER BY c.category_name ASC, p.product_name ASC;

-- 2. Join Customers and Addresses Table by Email
SELECT c.first_name, c.last_name, a.line1, a.city, a.state, a.zip_code
FROM customers c
JOIN addresses a 
ON c.customer_id = a.customer_id
WHERE c.email_address = 'allan.sherwood@yahoo.com';

-- 3. Return Only Shipping Addresses for Customers
SELECT c.first_name, c.last_name, a.line1, a.city, a.state, a.zip_code
FROM customers c
JOIN addresses a 
ON c.customer_id = a.customer_id
WHERE a.address_id = c.shipping_address_id;

-- 4. Join Multiple Tables to View Order Information
SELECT c.last_name, c.first_name, o.order_date, p.product_name, oi.item_price,
    oi.discount_amount, oi.quantity
FROM customers c 
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id 
ORDER BY c.last_name ASC, o.order_date ASC, p.product_name ASC;