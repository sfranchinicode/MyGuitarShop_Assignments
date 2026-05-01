-- MySQL Portfolio Project

-- 1. Calculate Discount Amounts and Prices
SELECT 
    product_name,
    list_price,
    discount_percent,
    ROUND(list_price * (discount_percent / 100), 2) AS discount_amount,
    ROUND(list_price - (discount_percent / 100), 2) AS discount_price
FROM 
    Products
ORDER BY 
    discount_price DESC
LIMIT 
    5;

-- 2. Analyze Item Totals from Order_Items
SELECT
    item_id,
    item_price,
    discount_amount,
    quantity,
    (item_price * quantity) AS price_total,
    (discount_amount * quantity) AS discount_total,
    ((item_price - discount_amount) * quantity) AS item_total
FROM 
    Order_Items
WHERE 
    ((item_price - discount_amount) * quantity) > 500
ORDER BY
    item_total DESC;

-- 3. Identify Products with Matching Prices
SELECT
    p1.product_name,
    p1.list_price
FROM
    Products p1
JOIN
    Products p2
    ON p1.list_price = p2.list_price
    AND p1.product_id != p2.product_id 
ORDER BY 
    p1.product_name;

-- 4. Find Unused Categories
SELECT
    c.category_name,
    p.product_id
FROM 
    Categories c 
LEFT JOIN 
    Products p 
    ON c.category_id = p.product_id
WHERE 
    p.product_id = IS NULL;

-- 5. Insert a New Customer
INSERT INTO Customers (
    email_address,
    password,
    first_name,
    last_name
)
VALUES (
    'rick@raven.com',
    '', 
    'Rick',
    'Raven'
);

-- 6. Find Customers with Multiple Products Ordered
SELECT 
    c.email_address
FROM
    Customers c 
JOIN 
    Orders o 
    ON c.customer_id = o.customer_id 
JOIN 
    Order_Items oi 
    ON o.order_id = oi.order_id
GROUP BY 
    c.email_address
HAVING COUNT(DISTINCT oi.product_id) > 1
ORDER BY 
    c.email_address ASC; 

-- 7. Show Product Quantities by Category with ROLLUP
SELECT 
    IF(GROUPING(c.category_name), 'All Categories', c.category_name) AS category_name,
    IF(GROUPING(p.product_name), 'Category Total', p.product_name) AS product_name,
    SUM(oi.quantity) AS total_quantity
FROM
    Categories c 
JOIN 
    Products p 
    ON c.category_id = p.category_id 
JOIN 
    Order_Items oi 
    ON p.product_id = oi.product_id
GROUP BY 
    c.category_name, p.product_name WITH ROLLUP;

-- 8. Create and Grant Privileges to a New User
CREATE USER 
    'sfranchini'@'%' IDENTIFIED BY 'myUNIQUEpassword123!';
GRANT SELECT, INSERT, UPDATE, DELETE
    ON MyGuitarShop.Customers TO 'sfranchini'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
    ON MyGuitarShop.Addresses TO 'sfranchini'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
    ON MyGuitarShop.Orders TO 'sfranchini'@'%';    
GRANT SELECT, INSERT, UPDATE, DELETE
    ON MyGuitarShop.Order_Items TO 'sfranchini'@'%';
GRANT SELECT
    ON MyGuitarShop.Products TO 'sfranchini'@'%';
GRANT SELECT
    ON MyGuitarShop.Categories TO 'sfranchini'@'%';
SHOW GRANTS FOR 'sfranchini'@'%';