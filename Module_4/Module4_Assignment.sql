-- Module 4: Modifying Tables

-- 1. Insert a New Category
INSERT INTO categories (category_name)
VALUES ('Brass');

--Verify it worked
SELECT *
FROM categories
WHERE category_name = 'Brass';

-- 2. Update the New Category Name 
SELECT category_id, category_name
FROM categories
WHERE category_name = 'Brass';

UPDATE categories
SET category_name = 'Woodwinds'
WHERE category_id = '5'; 

-- Verify it worked
SELECT *
FROM categories
WHERE category_id = '5'; 

-- 3. Delete the Catergory Row
SELECT category_id, category_name
FROM categories
WHERE category_name = 'Woodwinds';

DELETE FROM categories
WHERE category_id = '5';

--Verify it worked
SELECT *
FROM categories
WHERE category_id = '5';

-- 4. Insert a New Product
INSERT INTO products
(category_id, product_code, product_name, description, list_prince, discount_percent, date_added)
VALUES
(4, 'dgx-640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come', 799.99, 0, NOW());

--Verify it worked
SELECT product_id, product_name
FROM products
WHERE product_code = 'dgx_640';
